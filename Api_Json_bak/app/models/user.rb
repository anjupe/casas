class User < ApplicationRecord
  has_many :viviendas

  validates :Nombre, presence: true
  validates :Telefono, presence: true
  validates :Email, presence: true
end
