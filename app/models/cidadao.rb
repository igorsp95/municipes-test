class Cidadao < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco
  has_one_attached :photo

  validates :nome, presence: true
  validates :sobrenome, presence: true
  validates :cpf, length: { is: 11 }, presence: true, uniqueness: true
  validates :cns, length: { is: 15 }
  validates :email, presence: true, uniqueness: true
  validates :telefone, length: { minimum: 10 }
  validates :data_nascimento, presence: true
  validates :status, inclusion: { in: [ true, false ] }


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
