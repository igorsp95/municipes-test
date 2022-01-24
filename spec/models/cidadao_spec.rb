require 'rails_helper'

RSpec.describe Cidadao, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'Criar cidadãos' do
    it 'com todos os atributos' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111113',
        cns: '111111111111113',
        email: "exemplo3@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212123",
        status: true) 
      expect(cidadao).to be_valid  # test code
    end
  end

  context 'Não pode criar cidadãos' do  # (almost) plain English
    it 'sem passar os valores' do   #
      expect { Cidadao.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end

    it 'sem passar nome' do   #
      cidadao = Cidadao.new(
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar sobrenome' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar cpf' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar cns' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar email' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar email corretamente' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplohotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar data de nascimento' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar telefone' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'passando telefone < 10 caracteres' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        telefone: "212121212",
        status: true) 
      expect(cidadao).not_to be_valid  # test code
    end

    it 'sem passar status' do   #
      cidadao = Cidadao.new(
        nome: 'Igor',
        sobrenome: "Parente",
        cpf: '11111111111',
        cns: '111111111111111',
        email: "exemplo@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121"
        ) 
      expect(cidadao).not_to be_valid  # test code
    end
  end
end
