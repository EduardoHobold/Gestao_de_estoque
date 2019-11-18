require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'Validações gerais:' do

    it { should belong_to(:grupo) }
    it { should belong_to(:unidade) }
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:nome) }
  end

end