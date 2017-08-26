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

ActiveRecord::Schema.define(version: 20170826105431) do

  create_table "camisetas", force: :cascade do |t|
    t.string "marca"
    t.string "talla"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carros", force: :cascade do |t|
    t.string "marca"
    t.integer "modelo"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computadors", force: :cascade do |t|
    t.string "marca"
    t.integer "ram"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paiss", force: :cascade do |t|
    t.string "continente"
    t.string "presidente"
    t.text "himno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publicacions", force: :cascade do |t|
    t.string "titulo"
    t.text "cuerpo"
    t.string "autor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salons", force: :cascade do |t|
    t.integer "numero"
    t.string "edificio"
    t.integer "capacidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universidads", force: :cascade do |t|
    t.text "Nombre"
    t.string "Rector"
    t.integer "Telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "Nombre"
    t.string "Correo"
    t.integer "Telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
