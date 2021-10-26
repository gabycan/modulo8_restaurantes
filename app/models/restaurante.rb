class Restaurante < ApplicationRecord
  belongs_to :tipo_comida   # esto va en singular
  has_many :platos

  has_many :invitaciones
  has_many :usuarios, through: :invitaciones

  has_many :promociones
  has_many :usuarios, through: :promociones

  validates(:tipo, presence: true) 
  validates(:tipo, uniqueness: true)

end
