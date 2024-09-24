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

ActiveRecord::Schema[7.2].define(version: 2024_09_24_131843) do
  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.integer "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_chores_on_account_id"
  end

  create_table "contributors", force: :cascade do |t|
    t.integer "account_id", null: false
    t.integer "chore_id", null: false
    t.integer "membership_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_contributors_on_account_id"
    t.index ["chore_id"], name: "index_contributors_on_chore_id"
    t.index ["membership_id"], name: "index_contributors_on_membership_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "account_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_memberships_on_account_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.decimal "price_in_cents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chores", "accounts"
  add_foreign_key "contributors", "accounts"
  add_foreign_key "contributors", "chores"
  add_foreign_key "contributors", "memberships"
  add_foreign_key "memberships", "accounts"
  add_foreign_key "memberships", "users"
end
