# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_31_153030) do

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "last_name"
  end

  create_table "emails", force: :cascade do |t|
    t.string "account"
    t.string "kind"
    t.boolean "default"
    t.integer "contact_id", null: false
    t.index ["contact_id"], name: "index_emails_on_contact_id"
  end

  add_foreign_key "emails", "contacts"
end
