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

ActiveRecord::Schema.define(version: 20180530113459) do

  create_table "candidates", force: :cascade do |t|
    t.integer "recruiter_id"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "occupation"
    t.index ["recruiter_id"], name: "index_candidates_on_recruiter_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "company"
  end

  create_table "references", force: :cascade do |t|
    t.integer "candidate_id"
    t.string "content"
    t.string "company"
    t.index ["candidate_id"], name: "index_references_on_candidate_id"
  end

end
