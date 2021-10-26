class Usuario < ApplicationRecord
    has_secure_password

    has_many :invitaciones
    has_many :invitaciones_restaurantes, through: :invitaciones, source: restaurante

    has_many :promociones
    has_many :restaurantes, through: :promociones

    validates(:nombre_usuario, presence: true)
    validates(:nombre_usuario, uniqueness: true)

end
