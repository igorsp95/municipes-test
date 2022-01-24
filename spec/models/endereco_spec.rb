require 'rails_helper'

RSpec.describe Endereco, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # cidadao = Cidadao.create!(
  #   nome: 'Igor',
  #   sobrenome: "Parente",
  #   cpf: '11111111116',
  #   cns: '111111111111116',
  #   email: "exemplo6@hotmail.com",
  #   data_nascimento: Time.now,
  #   telefone: "2121212126",
  #   status: true)

  context 'Criar endereco' do
    it 'com atributos corretos' do   #
      endereco = Endereco.new(
        cep: "22793050",
        logradouro: "Av exemplo",
        complemento: "300",
        bairro: "exemplo",
        cidade: "exemplo",
        uf: "RJ",
        codigo_ibge: 1220,
        cidadao_id: 1
        ) 
        expect(endereco).to be_valid  # test code
    end
  end

  context 'Não pode endereços' do  # (almost) plain English
    it 'sem passar os valores' do   #
      expect { Endereco.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end

    it 'sem passar cep' do   #
      expect { Endereco.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end

end
