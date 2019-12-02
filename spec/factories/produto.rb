FactoryBot.define do
    factory :produto do
      nome { 'Tenis' }

      association :grupo, factory: :grupo
      association :unidade, factory: :unidade
    end
end