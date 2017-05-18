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

ActiveRecord::Schema.define(version: 20170518072759) do

  create_table "propiedads", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "calle"
    t.integer  "num_ext"
    t.string   "num_int"
    t.string   "colonia"
    t.integer  "cp"
    t.string   "delegacion"
    t.string   "precio"
    t.integer  "tipo_habitacion"
    t.boolean  "wifi"
    t.boolean  "cable"
    t.boolean  "agua"
    t.boolean  "gas"
    t.boolean  "gas_natural"
    t.boolean  "telefono"
    t.integer  "tipo_contrato"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.         "usuario"
    t.index ["usuario"], name: "index_propiedads_on_usuario"
  end

  create_table "propiedads_usuarios", id: false, force: :cascade do |t|
    t.integer "propiedad_id"
    t.integer "usuario_id"
    t.index ["propiedad_id"], name: "index_propiedads_usuarios_on_propiedad_id"
    t.index ["usuario_id"], name: "index_propiedads_usuarios_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.text     "nombre"
    t.text     "apellido"
    t.text     "email"
    t.date     "fecha_nac"
    t.text     "ubicacion"
    t.text     "telefono"
    t.boolean  "is_casero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.         "propiedad"
  end

end
