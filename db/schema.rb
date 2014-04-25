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

ActiveRecord::Schema.define(version: 20140419133327) do

  create_table "animais", force: true do |t|
    t.string   "nome"
    t.string   "identificacao"
    t.integer  "raca_id"
    t.integer  "propriedade_id"
    t.integer  "classificacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animais", ["classificacao_id"], name: "index_animais_on_classificacao_id", using: :btree
  add_index "animais", ["propriedade_id"], name: "index_animais_on_propriedade_id", using: :btree
  add_index "animais", ["raca_id"], name: "index_animais_on_raca_id", using: :btree

  create_table "cios", force: true do |t|
    t.date     "data"
    t.date     "previsao_proximo"
    t.integer  "cobertura_id"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cios", ["animal_id"], name: "index_cios_on_animal_id", using: :btree
  add_index "cios", ["cobertura_id"], name: "index_cios_on_cobertura_id", using: :btree

  create_table "classificacoes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "classificacao"
  end

  create_table "coberturas", force: true do |t|
    t.date     "data"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coberturas", ["animal_id"], name: "index_coberturas_on_animal_id", using: :btree

  create_table "exames", force: true do |t|
    t.integer  "tipo_exame_id"
    t.date     "data"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exames", ["animal_id"], name: "index_exames_on_animal_id", using: :btree
  add_index "exames", ["tipo_exame_id"], name: "index_exames_on_tipo_exame_id", using: :btree

  create_table "imagens", force: true do |t|
    t.string   "url"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagens", ["animal_id"], name: "index_imagens_on_animal_id", using: :btree

  create_table "informacoes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medicamentos", force: true do |t|
    t.string   "nome"
    t.integer  "tipo_medicamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medicamentos", ["tipo_medicamento_id"], name: "index_medicamentos_on_tipo_medicamento_id", using: :btree

  create_table "nascimentos", force: true do |t|
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissoes", force: true do |t|
    t.string   "permissao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pesagens", force: true do |t|
    t.float    "peso"
    t.date     "data"
    t.integer  "animal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pesagens", ["animal_id"], name: "index_pesagens_on_animal_id", using: :btree

  create_table "propriedades", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "racas", force: true do |t|
    t.string   "raca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_exames", force: true do |t|
    t.string   "tipo_exame"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_medicamentos", force: true do |t|
    t.string   "tipo_medicamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_vacinas", force: true do |t|
    t.string   "tipo_vacina"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.integer  "propriedade_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["propriedade_id"], name: "index_users_on_propriedade_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: true do |t|
    t.string   "login"
    t.string   "senha"
    t.integer  "permissao_id"
    t.integer  "propriedade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["permissao_id"], name: "index_usuarios_on_permissao_id", using: :btree
  add_index "usuarios", ["propriedade_id"], name: "index_usuarios_on_propriedade_id", using: :btree

  create_table "vacinas", force: true do |t|
    t.integer  "tipo_vacina_id"
    t.integer  "medicamento_id"
    t.integer  "animal_id"
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vacinas", ["animal_id"], name: "index_vacinas_on_animal_id", using: :btree
  add_index "vacinas", ["medicamento_id"], name: "index_vacinas_on_medicamento_id", using: :btree
  add_index "vacinas", ["tipo_vacina_id"], name: "index_vacinas_on_tipo_vacina_id", using: :btree

end
