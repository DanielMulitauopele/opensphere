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

ActiveRecord::Schema.define(version: 20180905203345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ballot_candidates", force: :cascade do |t|
    t.bigint "ballot_id"
    t.bigint "candidate_id"
    t.index ["ballot_id"], name: "index_ballot_candidates_on_ballot_id"
    t.index ["candidate_id"], name: "index_ballot_candidates_on_candidate_id"
  end

  create_table "ballots", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "voter_id"
    t.string "office"
    t.index ["voter_id"], name: "index_ballots_on_voter_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.bigint "voter_id"
    t.index ["voter_id"], name: "index_candidates_on_voter_id"
  end

  create_table "voters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "ethnicity"
    t.string "registered_party"
    t.string "username"
    t.string "password_digest"
    t.integer "role", default: 0
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "voter_id"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ballot_id"
    t.index ["ballot_id"], name: "index_votes_on_ballot_id"
    t.index ["candidate_id"], name: "index_votes_on_candidate_id"
    t.index ["voter_id"], name: "index_votes_on_voter_id"
  end

  add_foreign_key "ballot_candidates", "ballots"
  add_foreign_key "ballot_candidates", "candidates"
  add_foreign_key "ballots", "voters"
  add_foreign_key "candidates", "voters"
  add_foreign_key "votes", "ballots"
  add_foreign_key "votes", "candidates"
  add_foreign_key "votes", "voters"
end
