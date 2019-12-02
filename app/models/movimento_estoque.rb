class MovimentoEstoque < ApplicationRecord
  belongs_to :pessoa
  belongs_to :operacao
  belongs_to :produto

  validates :data, :quantidade, :pessoa, :produto, :operacao, presence: true

  scope :por_operacao, lambda { |produto, data, operacao|
    where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade)
  }

end
