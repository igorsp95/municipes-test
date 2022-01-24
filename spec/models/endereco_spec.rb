require 'rails_helper'

RSpec.describe Endereco, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'Não pode endereços' do  # (almost) plain English
    it 'sem passar os valores' do   #
      expect { Endereco.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end
end
