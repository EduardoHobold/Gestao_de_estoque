class MovimentoEstoque < ApplicationRecord
  belongs_to :pessoa
  belongs_to :operacao
  belongs_to :produto

  validates :data, :quantidade, presence: true
end
