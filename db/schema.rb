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

ActiveRecord::Schema[7.0].define(version: 2023_02_14_062454) do
  create_table "bills", force: :cascade do |t|
    t.integer "consumption"
    t.integer "rate_applied"
    t.decimal "amount"
    t.decimal "balance"
    t.string "bill_date"
    t.string "from"
    t.string "to"
    t.string "due_date"
    t.string "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "firstname"
    t.string "email"
    t.string "password_digest"
    t.string "confirm_password"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "premises", force: :cascade do |t|
    t.string "address"
    t.string "town"
    t.string "owners_firstname"
    t.string "owners_lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
