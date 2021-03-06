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

ActiveRecord::Schema.define(version: 2019_04_29_204706) do

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accountable_type"
    t.integer "accountable_id"
    t.integer "department_id"
    t.index ["accountable_type", "accountable_id"], name: "index_accounts_on_accountable_type_and_accountable_id"
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "budget_approvers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget", default: 5000
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expense_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expense_reports", force: :cascade do |t|
    t.string "First_name"
    t.string "Last_Name"
    t.string "Department"
    t.decimal "Flight", precision: 8, scale: 2
    t.decimal "Hotel", precision: 8, scale: 2
    t.decimal "Mileage"
    t.decimal "Transportation", precision: 8, scale: 2
    t.decimal "Other", precision: 8, scale: 2
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.integer "account_id"
    t.integer "travel_forms_id"
    t.integer "estimate2", default: 0
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "travel_form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_form_id"], name: "index_expenses_on_travel_form_id"
  end

  create_table "payment_managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_forms", force: :cascade do |t|
    t.string "Department"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "departments_id"
    t.integer "travel_forms_id"
    t.integer "travel_form_id"
    t.string "status", default: "pending"
    t.index ["departments_id"], name: "index_request_forms_on_departments_id"
    t.index ["travel_forms_id"], name: "index_request_forms_on_travel_forms_id"
  end

  create_table "super_accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travel_forms", force: :cascade do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.string "Department"
    t.date "Start_Date"
    t.date "End_Date"
    t.string "Location"
    t.decimal "Flight_Price", precision: 8, scale: 2
    t.decimal "Hotel_Price", precision: 8, scale: 2
    t.decimal "Mileage"
    t.decimal "Transportation", precision: 8, scale: 2
    t.decimal "Other", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.string "status", default: "pending"
    t.integer "estimate", default: 0
    t.integer "count", default: 0
    t.integer "counter", default: 0
  end

end
