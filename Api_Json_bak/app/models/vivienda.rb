class Vivienda < ApplicationRecord
  belongs_to :user

  validates :Referencia, presence: true
  validates :Titulo, presence: true
  validates :Localidad, presence: true
  validates :Provincia, presence: true
  validates :Precio, presence: true
  validates :Superficie, presence: true
  validates :Habitaciones, presence: true
  validates :Imagen, presence: true
end
