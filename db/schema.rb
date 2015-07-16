# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140605233106) do

  create_table "EK_ADM51_divs_signups", id: false, force: true do |t|
    t.decimal  "numcte",                          precision: 7, scale: 0
    t.string   "id_cve_fracc",        limit: 3
    t.datetime "fecha_inicio"
    t.string   "Num_region",          limit: 6
    t.string   "Region",              limit: 50
    t.string   "Desarrollo",          limit: 100
    t.integer  "blacklogs",           limit: 2
    t.integer  "estatus",             limit: 2
    t.integer  "cancelaciones",       limit: 2
    t.integer  "canc_reubicacion",    limit: 2
    t.datetime "@fin"
    t.datetime "@inicio"
    t.string   "nombre",              limit: 92
    t.datetime "fec_cancelacion"
    t.datetime "fecha_signup"
    t.decimal  "Num_tipo_casa",                   precision: 3, scale: 0
    t.string   "tipo_casa",           limit: 30
    t.integer  "cliente_copia",       limit: 2
    t.decimal  "id_esquema",                      precision: 3, scale: 0
    t.string   "nom_esquema",         limit: 50
    t.decimal  "id_producto",                     precision: 3, scale: 0
    t.string   "nom_producto",        limit: 70
    t.decimal  "id_ruta",                         precision: 4, scale: 0
    t.string   "nom_ruta",            limit: 80
    t.datetime "fecha_registro"
    t.decimal  "id_num_canal",                    precision: 5, scale: 0
    t.string   "nom_canal",           limit: 100
    t.decimal  "id_num_medio",                    precision: 3, scale: 0
    t.string   "nom_medio",           limit: 30
    t.decimal  "numero_agente",                   precision: 4, scale: 0
    t.string   "nombre_agente",       limit: 92
    t.datetime "fecha_arribo",                                            null: false
    t.datetime "fecha_actualizacion",                                     null: false
  end

  create_table "EK_ADM51_sm_fraccionamiento", id: false, force: true do |t|
    t.string   "id_cve_fracc",      limit: 3
    t.string   "nom_fracc",         limit: 100
    t.string   "dir_fracc",         limit: 50
    t.string   "ciudad",            limit: 25
    t.string   "estado",            limit: 5
    t.string   "pais",              limit: 15
    t.string   "cp",                limit: 6
    t.decimal  "num_etapa",                     precision: 1, scale: 0
    t.string   "empresa_cuenta",    limit: 150
    t.string   "num_cia",           limit: 3
    t.string   "nom_fracc_alias",   limit: 100
    t.string   "cerrar_desarrollo", limit: 1
    t.datetime "fecha_arribo"
  end

  create_table "EK_ADM80_divh_signups", id: false, force: true do |t|
    t.decimal  "numcte",                          precision: 7, scale: 0
    t.string   "id_cve_fracc",        limit: 3
    t.datetime "fecha_inicio"
    t.string   "Num_region",          limit: 6
    t.string   "Region",              limit: 50
    t.string   "Desarrollo",          limit: 100
    t.integer  "blacklogs",           limit: 2
    t.integer  "estatus",             limit: 2
    t.integer  "cancelaciones",       limit: 2
    t.integer  "canc_reubicacion",    limit: 2
    t.datetime "@fin"
    t.datetime "@inicio"
    t.string   "nombre",              limit: 92
    t.datetime "fec_cancelacion"
    t.datetime "fecha_signup"
    t.decimal  "Num_tipo_casa",                   precision: 3, scale: 0
    t.string   "tipo_casa",           limit: 30
    t.integer  "cliente_copia",       limit: 2
    t.decimal  "id_esquema",                      precision: 3, scale: 0
    t.string   "nom_esquema",         limit: 50
    t.decimal  "id_producto",                     precision: 3, scale: 0
    t.string   "nom_producto",        limit: 70
    t.decimal  "id_ruta",                         precision: 4, scale: 0
    t.string   "nom_ruta",            limit: 80
    t.datetime "fecha_registro"
    t.decimal  "id_num_canal",                    precision: 5, scale: 0
    t.string   "nom_canal",           limit: 100
    t.decimal  "id_num_medio",                    precision: 3, scale: 0
    t.string   "nom_medio",           limit: 30
    t.decimal  "numero_agente",                   precision: 4, scale: 0
    t.string   "nombre_agente",       limit: 92
    t.datetime "fecha_arribo",                                            null: false
    t.datetime "fecha_actualizacion",                                     null: false
  end

  create_table "EK_ADM80_sm_fraccionamiento", id: false, force: true do |t|
    t.string   "id_cve_fracc",      limit: 3
    t.string   "nom_fracc",         limit: 100
    t.string   "dir_fracc",         limit: 50
    t.string   "ciudad",            limit: 25
    t.string   "estado",            limit: 5
    t.string   "pais",              limit: 15
    t.string   "cp",                limit: 6
    t.decimal  "num_etapa",                     precision: 1, scale: 0
    t.string   "empresa_cuenta",    limit: 150
    t.string   "num_cia",           limit: 3
    t.string   "nom_fracc_alias",   limit: 100
    t.string   "cerrar_desarrollo", limit: 1
    t.datetime "fecha_arribo"
  end

  create_table "accounts", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
