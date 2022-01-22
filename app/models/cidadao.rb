class Cidadao < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco
  has_one_attached :photo

  validates :cpf, length: { is: 11 }

  include PgSearch::Model
  pg_search_scope :buscar_por_dados_ou_endereco,
    against: [ :nome, :sobrenome, :cpf, :cns, :email, :data_nascimento, :telefone, :status ],
    associated_against: {
      endereco: [:cep, :logradouro, :complemento, :bairro, :cidade, :uf]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
