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

ActiveRecord::Schema.define(:version => 20140416101621) do

  create_table "projectm_photos", :force => true do |t|
    t.string   "document"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "projectm_pictures", :force => true do |t|
    t.string   "attachment"
    t.integer  "project_id"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "projectm_project_comments", :force => true do |t|
    t.text     "add_comment"
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projectm_projects", :force => true do |t|
    t.string   "project_title"
    t.string   "project_created_by"
    t.datetime "project_created_on"
    t.text     "project_details"
    t.datetime "project_starts_on"
    t.datetime "project_ends_on"
    t.string   "status"
    t.string   "invite_people"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "projectm_task_comments", :force => true do |t|
    t.text     "add_task_comment"
    t.integer  "task_id"
    t.integer  "user_id"
    t.string   "task_comment_created_by"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "projectm_tasks", :force => true do |t|
    t.string   "title"
    t.string   "task_created_by"
    t.string   "all_project"
    t.datetime "task_created_on"
    t.text     "task_details"
    t.datetime "starts_on"
    t.datetime "ends_on"
    t.integer  "project_id"
    t.integer  "user_id"
    t.string   "task_status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "projectm_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "avatar"
  end

  add_index "projectm_users", ["email"], :name => "index_projectm_users_on_email", :unique => true
  add_index "projectm_users", ["reset_password_token"], :name => "index_projectm_users_on_reset_password_token", :unique => true

end
