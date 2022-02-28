# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_28_184104) do

  create_table "adesao_planos", force: :cascade do |t|
    t.date "data_admissao"
    t.integer "horas_meditadas"
    t.text "endereco"
    t.decimal "peso"
    t.decimal "altura"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "funcionarios_id"
    t.integer "planos_id"
    t.index ["funcionarios_id"], name: "index_adesao_planos_on_funcionarios_id"
    t.index ["planos_id"], name: "index_adesao_planos_on_planos_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "name"
    t.integer "cpf"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "adesao_planos_id"
    t.index ["adesao_planos_id"], name: "index_funcionarios_on_adesao_planos_id"
    t.index ["user_id"], name: "index_funcionarios_on_user_id"
  end

  create_table "planos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_planos_on_user_id"
  end

  create_table "planos_empresas", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "planos_id"
    t.integer "user_id"
    t.index ["planos_id"], name: "index_planos_empresas_on_planos_id"
    t.index ["user_id"], name: "index_planos_empresas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "adesao_planos", "funcionarios", column: "funcionarios_id"
  add_foreign_key "adesao_planos", "planos", column: "planos_id"
  add_foreign_key "funcionarios", "adesao_planos", column: "adesao_planos_id"
  add_foreign_key "funcionarios", "users"
  add_foreign_key "planos", "users"
  add_foreign_key "planos_empresas", "planos", column: "planos_id"
  add_foreign_key "planos_empresas", "users"
end
