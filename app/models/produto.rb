class Produto < ApplicationRecord
  belongs_to :unidade
  belongs_to :grupo

  validates :nome, presence: true
  validates :nome, uniqueness: true
end
