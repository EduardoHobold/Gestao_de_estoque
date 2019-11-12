require 'rails_helper'

RSpec.describe Endereco, type: :model do
  context 'Validações gerais:' do
    it { should validate_presence_of(:cidade) }
    it { should validate_presence_of(:estado) }
  end

end