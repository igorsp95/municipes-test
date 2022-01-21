class Cidadao < ApplicationRecord
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco
  has_one_attached :photo
end
