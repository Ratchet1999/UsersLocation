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

ActiveRecord::Schema[7.0].define(version: 2023_06_23_134822) do
  create_table "countries", primary_key: "id2", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country_users", id: false, force: :cascade do |t|
    t.integer "u_id"
    t.integer "c_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["c_id"], name: "index_country_users_on_c_id"
    t.index ["u_id"], name: "index_country_users_on_u_id"
  end

  create_table "users", primary_key: "id1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "country_users", "countries", column: "c_id", primary_key: "id2"
  add_foreign_key "country_users", "users", column: "u_id", primary_key: "id1"
end
