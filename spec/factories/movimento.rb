FactoryBot.define do
    factory :movimento do
      data { '2000-07-27' }
      quantidade { '8' }

      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :produto, factory: :produto
    end
end