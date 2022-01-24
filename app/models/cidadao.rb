class Cidadao < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco
  has_one_attached :photo

  validates :nome, presence: true
  validates :sobrenome, presence: true
  validates :cpf, length: { is: 11 }, presence: true, uniqueness: true
  validates :cns, length: { is: 15 }, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :telefone, presence: true, length: { minimum: 10 }, uniqueness: true
  validates :data_nascimento, presence: true
  validates :status, inclusion: { in: [ true, false ] }


  include PgSearch::Model
  pg_search_scope :buscar_por_dados_ou_endereco,
    against: [ :nome, :sobrenome, :cpf, :cns, :email, :data_nascimento, :telefone, :status ],
    associated_against: {
      endereco: [:cep, :logradouro, :complemento, :bairro, :cidade, :uf]
    },
    using: {
      tsearch: { prefix: true }
    }
end
