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

ActiveRecord::Schema.define(version: 2018_11_03_205317) do

  create_table "assistance_events", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.decimal "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_assistance_events_on_event_id"
    t.index ["user_id"], name: "index_assistance_events_on_user_id"
  end

  create_table "eventcommunities", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.string "comentario"
    t.date "fechacomentario"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_eventcommunities_on_event_id"
    t.index ["user_id"], name: "index_eventcommunities_on_user_id"
  end

  create_table "eventqualifications", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.integer "calificacion"
    t.string "comentario"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_eventqualifications_on_event_id"
    t.index ["user_id"], name: "index_eventqualifications_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "gauging"
    t.integer "eventtype_id"
    t.datetime "date"
    t.text "address"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eventtype_id"], name: "index_events_on_eventtype_id"
  end

  create_table "eventtypes", force: :cascade do |t|
    t.text "description"
    t.decimal "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsable_events", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.decimal "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_responsable_events_on_event_id"
    t.index ["user_id"], name: "index_responsable_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "phone"
    t.integer "age"
    t.string "gender"
    t.decimal "state"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
