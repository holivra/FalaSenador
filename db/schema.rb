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

ActiveRecord::Schema.define(version: 20171127172758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "senators", force: :cascade do |t|
    t.string "CodigoParlamentar"
    t.string "Nome"
    t.string "UrlFoto"
    t.string "UrlPagina"
    t.string "SiglaPartido"
    t.string "UF"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speeches", force: :cascade do |t|
    t.string "CodigoParlamentar"
    t.string "CodigoPronunciamento"
    t.string "Data"
    t.string "UrlTexto"
    t.text "TextoCompleto"
    t.bigint "senator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["senator_id"], name: "index_speeches_on_senator_id"
  end

  add_foreign_key "speeches", "senators"
end
