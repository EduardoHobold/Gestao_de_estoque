require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  context 'Validações gerais:' do
    subject { FactoryBot.create(:pessoa) }

    it { should belong_to(:endereco) }
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:documento) }
    it { should validate_uniqueness_of(:documento).case_insensitive }
    it { should validate_numericality_of(:documento) }
  end

end