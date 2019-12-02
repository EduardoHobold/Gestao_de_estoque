FactoryBot.define do
  
    factory :compra, class: 'Operacao' do
      tipo { :compra }
      descricao { 'Comprei 20KG de carne de gado' }
    end

    factory :venda, class: 'Operacao' do
      tipo { :venda }
      descricao { 'Vendi 10KG de carne de gado' }
    end

    factory :devVenda, class: 'Operacao' do
      tipo { :devVenda }
      descricao { '5Kg de carne de gado' }
    end

    factory :DevCompra, class: 'Operacao' do
      tipo { :DevCompra }
      descricao { 'Comprei 20KG de carne de gado' }
    end
  
end
