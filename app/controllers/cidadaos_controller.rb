class CidadaosController < ApplicationController
  before_action :set_cidadao, only: [:show, :edit, :update]

  def index
    if params[:query].present?
      @cidadaos = Cidadao.buscar_por_dados_ou_endereco(params[:query])
    else
      @cidadaos = Cidadao.order('nome').all
    end
  end

  def show
    @endereco = @cidadao.endereco
    @cpf = @cidadao.cpf
    @cpf_formated = formatar_cpf(@cpf)
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

  def edit
  end

  def update
    if @cidadao.update(cidadao_params)
      redirect_to cidadao_path(@cidadao)
      flash[:notice] = 'Munícipe atualizado com sucesso.'
    else
      render :edit
      flash[:notice] = 'Algo deu errado. Tente novamente mais tarde.'
    end
  end

  private
  
  def formatar_cpf(cpf)
    # cpf = @cidadao.cpf
    cpf_format = cpf.split('')
    new_cpf = "#{cpf_format[0]}#{cpf_format[1]}#{cpf_format[2]}.#{cpf_format[3]}#{cpf_format[4]}#{cpf_format[5]}.#{cpf_format[6]}#{cpf_format[7]}#{cpf_format[8]}-#{cpf_format[9]}#{cpf_format[10]}"
  end

  def set_cidadao
    @cidadao = Cidadao.find(params[:id])
  end

  def cidadao_params
    params.require(:cidadao).permit(:nome, :sobrenome, :cpf, :cns, :email, :data_nascimento, :telefone, :status, :photo, endereco_attributes: [:cep, :logradouro, :complemento, :bairro, :cidade, :uf])
  end
end
