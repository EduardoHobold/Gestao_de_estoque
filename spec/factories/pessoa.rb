FactoryBot.define do
    factory :pessoa do
      nome { 'Eduardo Hobold' }
      documento { '4587848687' }

      association :endereco, factory: :endereco
    end
end