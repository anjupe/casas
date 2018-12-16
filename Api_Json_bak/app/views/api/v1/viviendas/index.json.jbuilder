json.array! @viviendas do |vivienda|
  json.id vivienda.id
  json.Referencia vivienda.Referencia
  json.Titulo vivienda.Titulo
  json.Localidad vivienda.Localidad
  json.Provincia vivienda.Provincia
  json.Precio vivienda.Precio
  json.Superficie vivienda.Superficie
  json.Habitaciones vivienda.Habitaciones
  json.Garage vivienda.Garage
  json.Terraza vivienda.Terraza
  json.Trastero vivienda.Trastero
  json.Piscina vivienda.Piscina
  json.Ascensor vivienda.Ascensor
  json.Jardin vivienda.Jardin
  json.Certificacion vivienda.Certificacion
  json.Imagen vivienda.Imagen
  json.Novedad vivienda.Novedad
  json.user do
    json.id vivienda.user.id
    json.Nombre vivienda.user.Nombre
    json.Telefono vivienda.user.Telefono
    json.Email vivienda.user.Email
  end
end