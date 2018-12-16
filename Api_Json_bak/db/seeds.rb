# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({Nombre: 'user01', Telefono: '928664477', Email: 'user01@dominio.com'})
user.viviendas.create([{Referencia:0001,
                        Titulo:"Chalet con piscina",
                        Localidad: "Las Palmas de Gran Canaria",
                        Provincia: "Las Palmas",
                        Precio: 531,
                        Superficie: 90,
                        Habitaciones:2,
                        Garage:true,
                        Terraza:true,
                        Trastero:false,
                        Piscina:true,
                        Ascensor:false,
                        Jardin:true,
                        Certificacion:false,
                        Imagen:"images/1.jpg",
                        Novedad:true
                       },
                       {
                           Referencia:0003,
                           Titulo:"Casa con piscina en la ciudad",
                           Localidad: "Arrecife",
                           Provincia: "Las Palmas",
                           Precio: 1230,
                           Superficie: 150,
                           Habitaciones:3,
                           Garage:false,
                           Terraza:true,
                           Trastero:false,
                           Piscina:true,
                           Ascensor:false,
                           Jardin:true,
                           Certificacion:true,
                           Imagen:"images/4.jpg",
                           Novedad:true
                       },
                       {
                           Referencia:0004,
                           Titulo:"Casa nueva construcción",
                           Localidad: "Mogán",
                           Provincia: "Las Palmas",
                           Precio: 600,
                           Superficie: 75,
                           Habitaciones:3,
                           Garage:false,
                           Terraza:true,
                           Trastero:false,
                           Piscina:false,
                           Ascensor:false,
                           Jardin:true,
                           Certificacion:true,
                           Imagen:"images/5.JPG",
                           Novedad:false
                       }])

user = User.create ({Nombre: 'user02', Telefono: '928665577', Email: 'user02@dominio.com'})
user.viviendas.create ({Referencia:0002,
                        Titulo:"Chalet dos plantas",
                        Localidad: "Teror",
                        Provincia: "Las Palmas",
                        Precio: 1900,
                        Superficie: 260,
                        Habitaciones:5,
                        Garage:true,
                        Terraza:true,
                        Trastero:true,
                        Piscina:false,
                        Ascensor:false,
                        Jardin:true,
                        Certificacion:false,
                        Imagen:"images/2.jpg",
                        Novedad:true})

user = User.create({Nombre: 'user03', Telefono: '928667777', Email: 'user03@dominio.com'})
user.viviendas.create({Referencia:0005,
                                Titulo:"Adosado reformado",
                                Localidad: "Agüimes",
                                Provincia: "Las Palmas",
                                Precio: 620,
                                Superficie: 68,
                                Habitaciones:2,
                                Garage:false,
                                Terraza:true,
                                Trastero:false,
                                Piscina:false,
                                Ascensor:false,
                                Jardin:false,
                                Certificacion:false,
                                Imagen:"images/6.jpeg",
                                Novedad:false})



