require 'rails_helper'

RSpec.describe MovimentoEstoque, type: :model do
  context 'Validações gerais:' do

    it { should belong_to(:produto) }
    it { should belong_to(:operacao) }
    it { should belong_to(:pessoa) }
    it { should validate_presence_of(:data) }
    it { should validate_presence_of(:quantidade) }
  end

end