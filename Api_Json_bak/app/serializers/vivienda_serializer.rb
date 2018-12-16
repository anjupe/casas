class ViviendaSerializer < ActiveModel::Serializer
  attributes :id, :Referencia, :Titulo, :Localidad, :Provincia, :Precio, :Superficie, :Habitaciones, :Garage, :Terraza, :Piscina, :Ascensor, :Jardin, :Certificacion, :Imagen, :Novedad
  belongs_to :user

  class UserSerializer < ActiveModel::Serializer
    attributes :id, :Nombre, :Telefono, :Email
  end
end