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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110319194356) do

  create_table "emos", :force => true do |t|
    t.string   "word"
    t.float    "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "msgdata", :force => true do |t|
    t.datetime "createdate"
    t.string   "profile_image"
    t.string   "from_user_id"
    t.string   "id_str"
    t.string   "from_user"
    t.text     "message"
    t.string   "metadata"
    t.string   "language_cd"
    t.text     "source_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "score"
    t.string   "session_id"
    t.string   "search_string"
    t.datetime "request_time"
    t.string   "site_name"
  end

  create_table "tst1s", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
