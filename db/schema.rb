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

ActiveRecord::Schema.define(:version => 20110908104552) do

  create_table "day_records", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.decimal  "zuo_shoupan_jia", :precision => 10, :scale => 2
    t.decimal  "kaipan_jia",      :precision => 10, :scale => 2
    t.decimal  "shoupan_jia",     :precision => 10, :scale => 2
    t.decimal  "zhangdie_fu",     :precision => 10, :scale => 2
    t.decimal  "zhangdie_e",      :precision => 10, :scale => 2
    t.decimal  "chenjiao_liang",  :precision => 10, :scale => 2
    t.decimal  "chenjiao_e",      :precision => 10, :scale => 2
    t.decimal  "zuigao",          :precision => 10, :scale => 2
    t.decimal  "zuidi",           :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "day_records", ["code"], :name => "index_day_records_on_code"

  create_table "stocks", :force => true do |t|
    t.string   "name"
    t.string   "short_pinyin_name"
    t.string   "code"
    t.text     "f10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
