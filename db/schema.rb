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

ActiveRecord::Schema[7.0].define(version: 2023_01_27_024523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "initiatives", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "description"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "valuation", default: 0.0
    t.index ["user_id"], name: "index_initiatives_on_user_id"
  end

  create_table "investments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "initiative_id", null: false
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initiative_id"], name: "index_investments_on_initiative_id"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "numberOfEmployees"
    t.string "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "firstName"
    t.string "lastName"
    t.string "role"
    t.float "wallet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "organization_id", null: false
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "initiatives", "users"
  add_foreign_key "investments", "initiatives"
  add_foreign_key "investments", "users"
  add_foreign_key "users", "organizations"
end
