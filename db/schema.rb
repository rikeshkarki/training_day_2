# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20140209050055) do

  create_table "assignments", :force => true do |t|
    t.integer  "job_id"
    t.integer  "worker_id"
    t.integer  "status",     :default => 0, :null => false
    t.string   "type"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.float    "payout"
    t.string   "task_id"
  end

  create_table "job_types", :force => true do |t|
    t.string   "title",      :limit => 128, :null => false
    t.string   "type",                      :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "skill_id"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "transaction_id",                :null => false
    t.integer  "job_type_id",                   :null => false
    t.integer  "status",         :default => 0, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "status",                    :null => false
    t.string   "access_hash", :limit => 40
    t.string   "type",                      :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "workers", :force => true do |t|
    t.string   "mturk_id_f"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "comment"
    t.boolean  "is_super",   :default => false, :null => false
    t.boolean  "is_admin",   :default => false, :null => false
    t.integer  "status",     :default => 0
  end

end
