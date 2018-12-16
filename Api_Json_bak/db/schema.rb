# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181204113147) do

  create_table "users", force: :cascade do |t|
    t.string "Nombre"
    t.string "Telefono"
    t.string "Email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viviendas", force: :cascade do |t|
    t.integer "Referencia"
    t.string "Titulo"
    t.string "Localidad"
    t.string "Provincia"
    t.float "Precio"
    t.string "Superficie"
    t.integer "Habitaciones"
    t.boolean "Garage"
    t.boolean "Terraza"
    t.boolean "Trastero"
    t.boolean "Piscina"
    t.boolean "Ascensor"
    t.boolean "Jardin"
    t.boolean "Certificacion"
    t.string "Imagen"
    t.boolean "Novedad"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_viviendas_on_user_id"
  end

end
