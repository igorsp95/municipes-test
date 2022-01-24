require 'rails_helper'

RSpec.describe Endereco, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context 'Criar endereco' do
    it 'com atributos corretos' do   #
      cidadao = Cidadao.new(
      id: 1,
      nome: 'Igor',
      sobrenome: "Parente",
      cpf: '11111111116',
      cns: '111111111111116',
      email: "exemplo6@hotmail.com",
      data_nascimento: Time.now,
      telefone: "2121212126",
      status: true,
      endereco: Endereco.new(
      cep: "22793050",
      logradouro: "Av exemplo",
      complemento: "300",
      bairro: "exemplo",
      cidade: "exemplo",
      uf: "RJ",
      codigo_ibge: 1220,
      cidadao_id: 1
        )
      )
      expect(cidadao.endereco).to be_valid  # test code
    end
  end

  context 'Não pode endereços' do  # (almost) plain English
    it 'sem passar os atributos' do   #
      expect { Endereco.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end

    it 'sem passar cep' do   #
      cidadao = Cidadao.new(
      id: 1,
      nome: 'Igor',
      sobrenome: "Parente",
      cpf: '11111111116',
      cns: '111111111111116',
      email: "exemplo6@hotmail.com",
      data_nascimento: Time.now,
      telefone: "2121212126",
      status: true,
      endereco: Endereco.new(
      logradouro: "Av exemplo",
      complemento: "300",
      bairro: "exemplo",
      cidade: "exemplo",
      uf: "RJ",
      codigo_ibge: 1220,
      cidadao_id: 1
        )
      )
      expect(cidadao.endereco).not_to be_valid  # test code
    end

    it 'sem passar logradouro' do   #
      cidadao = Cidadao.new(
      id: 1,
      nome: 'Igor',
      sobrenome: "Parente",
      cpf: '11111111116',
      cns: '111111111111116',
      email: "exemplo6@hotmail.com",
      data_nascimento: Time.now,
      telefone: "2121212126",
      status: true,
      endereco: Endereco.new(
      cep: "22793050",
      complemento: "300",
      bairro: "exemplo",
      cidade: "exemplo",
      uf: "RJ",
      codigo_ibge: 1220,
      cidadao_id: 1
        )
      )
      expect(cidadao.endereco).not_to be_valid  # test code
    end

    it 'sem passar cidade' do   #
      cidadao = Cidadao.new(
      id: 1,
      nome: 'Igor',
      sobrenome: "Parente",
      cpf: '11111111116',
      cns: '111111111111116',
      email: "exemplo6@hotmail.com",
      data_nascimento: Time.now,
      telefone: "2121212126",
      status: true,
      endereco: Endereco.new(
      cep: "22793050",
      logradouro: "Av exemplo",
      complemento: "300",
      bairro: "exemplo",
      uf: "RJ",
      codigo_ibge: 1220,
      cidadao_id: 1
        )
      )
      expect(cidadao.endereco).not_to be_valid  # test code
    end

    it 'sem passar bairro' do   #
      cidadao = Cidadao.new(
      id: 1,
      nome: 'Igor',
      sobrenome: "Parente",
      cpf: '11111111116',
      cns: '111111111111116',
      email: "exemplo6@hotmail.com",
      data_nascimento: Time.now,
      telefone: "2121212126",
      status: true,
      endereco: Endereco.new(
      cep: "22793050",
      logradouro: "Av exemplo",
      complemento: "300",
      cidade: "exemplo",
      uf: "RJ",
      codigo_ibge: 1220,
      cidadao_id: 1
        )
      )
      expect(cidadao.endereco).not_to be_valid  # test code
    end

    it 'sem passar uf' do   #
      cidadao = Cidadao.new(
      id: 1,
      nome: 'Igor',
      sobrenome: "Parente",
      cpf: '11111111116',
      cns: '111111111111116',
      email: "exemplo6@hotmail.com",
      data_nascimento: Time.now,
      telefone: "2121212126",
      status: true,
      endereco: Endereco.new(
      cep: "22793050",
      logradouro: "Av exemplo",
      complemento: "300",
      bairro: "exemplo",
      cidade: "exemplo",
      codigo_ibge: 1220,
      cidadao_id: 1
        )
      )
      expect(cidadao.endereco).not_to be_valid  # test code
    end

    it 'sem cidadao' do   #
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
      expect(endereco).not_to be_valid  # test code
    end
  end
end
