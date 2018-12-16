class CreateViviendas < ActiveRecord::Migration[5.1]
  def change
    create_table :viviendas do |t|
      t.integer :Referencia
      t.string :Titulo
      t.string :Localidad
      t.string :Provincia
      t.float :Precio
      t.string :Superficie
      t.integer :Habitaciones
      t.boolean :Garage
      t.boolean :Terraza
      t.boolean :Trastero
      t.boolean :Piscina
      t.boolean :Ascensor
      t.boolean :Jardin
      t.boolean :Certificacion
      t.string :Imagen
      t.boolean :Novedad
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
