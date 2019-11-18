class Pessoa < ApplicationRecord
  belongs_to :endereco

  validates :nome, :documento, presence: true
  validates :documento, uniqueness: true, numericality: { only_number: true }
end
