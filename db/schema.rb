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

ActiveRecord::Schema.define(version: 20161229104333) do

  create_table "check_in_outs", force: :cascade do |t|
    t.integer  "check_in_no"
    t.string   "customer_code"
    t.string   "status"
    t.datetime "check_in_time"
    t.datetime "check_out_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.date     "check_in_date"
    t.date     "check_out_date"
    t.string   "guest_name"
    t.string   "guest_no"
    t.string   "guest_email"
  end

  create_table "customer_staffs", force: :cascade do |t|
    t.string   "customer_code"
    t.integer  "customer_staff_id"
    t.string   "staff_first_name"
    t.string   "staff_last_name"
    t.string   "staff_email"
    t.string   "staff_phone"
    t.string   "department"
    t.string   "staff_post"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_code"
    t.string   "customer_name"
    t.string   "email"
    t.string   "phone_no"
    t.string   "address"
    t.date     "join_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "package_in_outs", force: :cascade do |t|
    t.integer  "ticket_no"
    t.string   "customer_code"
    t.integer  "quantity"
    t.string   "package_no"
    t.string   "Courier"
    t.integer  "floor"
    t.string   "location"
    t.datetime "package_in_time"
    t.datetime "package_out_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rack_infos", force: :cascade do |t|
    t.string   "rack_no"
    t.string   "tpye"
    t.string   "customer_code"
    t.integer  "total_unit"
    t.integer  "low_unit"
    t.integer  "height_unit"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "staff_infos", force: :cascade do |t|
    t.integer  "staff_id"
    t.string   "staff_first_name"
    t.string   "staff_last_name"
    t.string   "staff_email"
    t.string   "staff_phone"
    t.string   "department"
    t.string   "staff_post"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "temperatures", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.datetime "datetime"
    t.integer  "temperature"
    t.string   "rack_no"
    t.integer  "min_temp"
    t.integer  "max_temp"
    t.integer  "low_warnlv"
    t.integer  "high_warnlv"
    t.datetime "timestamp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "ticket_no"
    t.string   "services"
    t.string   "customer_code"
    t.date     "build_date"
    t.integer  "staff_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
