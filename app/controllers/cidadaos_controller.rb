class CidadaosController < ApplicationController
  before_action :set_cidadao, only: [:show, :edit, :update]

  def index
    @cidadaos = Cidadao.order('nome').all
  end

  def show
    @endereco = @cidadao.endereco
  end

  def new
    @cidadao = Cidadao.new
    @cidadao.build_endereco
  end

  def create
    @cidadao = Cidadao.new(cidadao_params)

    if @cidadao.save
      redirect_to cidadao_path(@cidadao)
    else
      render :new
    end
  end

  def update
    if @cidadao.update(cidadao_params)
      redirect_to cidadao_path(@cidadao)
    else
      render :edit
    end
  end

  private

  def set_cidadao
    @cidadao = Cidadao.find(params[:id])
  end

  def cidadao_params
    params.require(:cidadao).permit(:nome, :sobrenome, :cpf, :cns, :email, :data_nascimento, :telefone, :status, :photo, endereco_attributes: [:id, :cep, :logradouro, :complemento, :bairro, :cidade, :uf])
  end
end
