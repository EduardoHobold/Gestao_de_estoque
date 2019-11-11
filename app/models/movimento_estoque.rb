class MovimentoEstoque < ApplicationRecord
  belongs_to :pessoa
  belongs_to :operacao
  belongs_to :produto
end
