class Endereco < ApplicationRecord
  belongs_to :cidadao

  validates :cep, presence: true
  validates :logradouro, presence: true
  validates :cidade, presence: true
  validates :bairro, presence: true
  validates :uf, presence: true
end
