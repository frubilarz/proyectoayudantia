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

ActiveRecord::Schema.define(version: 20170503190645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atenciones", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "tipo_atencion_id"
    t.integer  "mascota_id"
    t.integer  "mh_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "autos", force: :cascade do |t|
    t.integer  "puertas"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "marca_id"
  end

  create_table "bloques", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dias", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "duenos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "dia_id"
    t.integer  "bloque_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascotas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "fecha_nac"
    t.integer  "dueno_id"
    t.integer  "tipo_mascota_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mhs", force: :cascade do |t|
    t.integer  "medico_id"
    t.integer  "estado_id"
    t.integer  "horario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "direccion"
    t.integer  "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "auto_id"
  end

  create_table "tipo_atenciones", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipo_mascotas", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "atenciones", "mascotas"
  add_foreign_key "atenciones", "mhs"
  add_foreign_key "atenciones", "tipo_atenciones", column: "tipo_atencion_id"
  add_foreign_key "autos", "marcas"
  add_foreign_key "horarios", "bloques"
  add_foreign_key "horarios", "dias"
  add_foreign_key "mascotas", "duenos"
  add_foreign_key "mascotas", "tipo_mascotas"
  add_foreign_key "mhs", "estados"
  add_foreign_key "mhs", "horarios"
  add_foreign_key "mhs", "medicos"
  add_foreign_key "personas", "autos"
end
