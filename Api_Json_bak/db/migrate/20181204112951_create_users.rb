class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Nombre
      t.string :Telefono
      t.string :Email

      t.timestamps
    end
  end
end