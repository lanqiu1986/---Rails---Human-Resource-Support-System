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

ActiveRecord::Schema.define(:version => 20130428233449) do

  create_table "absences", :force => true do |t|
    t.text     "reason"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.string   "form"
    t.datetime "date"
    t.integer  "tempuser"
    t.integer  "company_id"
    t.datetime "date_ended"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "subdomain"
  end

  create_table "noticeboards", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "company_id"
  end

  create_table "private_messages", :force => true do |t|
    t.integer  "sender"
    t.integer  "receiver"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "date"
    t.integer  "company_id"
  end

  create_table "projects", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.datetime "date_ended"
    t.string   "title"
    t.datetime "date_started"
    t.integer  "company_id"
    t.integer  "estimated_hours"
  end

  create_table "skills", :force => true do |t|
    t.string   "skill_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "company_id"
  end

  create_table "skills_tasks", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "task_id"
  end

  create_table "skills_users", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "user_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.integer  "estimated_hours"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "project_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "company_id"
  end

  create_table "tasks_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "task_id"
  end

  create_table "time_and_attendances", :force => true do |t|
    t.integer  "hours_worked"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "task_id"
    t.integer  "company_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "personnel_number"
    t.string   "address"
    t.integer  "telephone"
    t.integer  "date_of_birth"
    t.string   "sex"
    t.integer  "commencement"
    t.text     "insurance"
    t.string   "grade"
    t.string   "division"
    t.integer  "salary_scale"
    t.boolean  "admin"
    t.integer  "company_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "users_tasks", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "task_id"
  end

end
