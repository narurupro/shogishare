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

ActiveRecord::Schema.define(version: 20181214054008) do

  create_table "castlings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opening_castlings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "opening_id"
    t.integer  "castling_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["castling_id"], name: "index_opening_castlings_on_castling_id", using: :btree
    t.index ["opening_id"], name: "index_opening_castlings_on_opening_id", using: :btree
  end

  create_table "openings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_map2s", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "castling_id"
    t.integer  "tag_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["castling_id", "tag_id"], name: "index_tag_map2s_on_castling_id_and_tag_id", unique: true, using: :btree
    t.index ["castling_id"], name: "index_tag_map2s_on_castling_id", using: :btree
    t.index ["tag_id"], name: "index_tag_map2s_on_tag_id", using: :btree
  end

  create_table "tag_maps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "opening_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opening_id", "tag_id"], name: "index_tag_maps_on_opening_id_and_tag_id", using: :btree
    t.index ["opening_id"], name: "index_tag_maps_on_opening_id", using: :btree
    t.index ["tag_id"], name: "index_tag_maps_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "description"
    t.string   "shogi_appid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "opening_castlings", "castlings"
  add_foreign_key "opening_castlings", "openings"
  add_foreign_key "tag_map2s", "castlings"
  add_foreign_key "tag_map2s", "tags"
  add_foreign_key "tag_maps", "openings"
  add_foreign_key "tag_maps", "tags"
end
