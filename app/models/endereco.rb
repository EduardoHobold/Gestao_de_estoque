class Endereco < ApplicationRecord
  validates :cidade, :estado, presence: true
end
