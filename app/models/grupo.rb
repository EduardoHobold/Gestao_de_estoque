class Grupo < ApplicationRecord
    validates :nome, presence: true
end
