class Unidade < ApplicationRecord  
    validates :descricao, :sigla, presence: true
    validates :sigla, uniqueness: true
end
