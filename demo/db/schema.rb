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

ActiveRecord::Schema.define(version: 2020_01_06_073423) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "publishres_id", null: false
    t.integer "categeries_id", null: false
    t.string "isbn10", limit: 10
    t.string "isbn13", limit: 13
    t.string "language", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categeries_id"], name: "index_books_on_categeries_id"
    t.index ["publishres_id"], name: "index_books_on_publishres_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone", limit: 15
    t.date "brith_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "books", "categeries", column: "categeries_id"
  add_foreign_key "books", "publishres", column: "publishres_id"
end
