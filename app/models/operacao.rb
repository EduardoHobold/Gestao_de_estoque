class Operacao < ApplicationRecord
    enum tipo: { venda: 0, compra: 1, devVenda: 2,  devCompra: 3 }

    validates :descricao, :tipo, presence: true
end
