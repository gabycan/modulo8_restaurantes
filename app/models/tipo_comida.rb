class TipoComida < ApplicationRecord
    has_many :restaurantes

    validates(:tipo, presence: true)    #evita
    validates(:tipo, uniqueness: true)  #evita
end
