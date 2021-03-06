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

ActiveRecord::Schema.define(:version => 20131113143007) do

  create_table "blog_comments", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "email",      :null => false
    t.string   "website"
    t.text     "body",       :null => false
    t.integer  "post_id",    :null => false
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "blog_comments", ["post_id"], :name => "index_blog_comments_on_post_id"

  create_table "blog_posts", :force => true do |t|
    t.string   "title",                         :null => false
    t.text     "body",                          :null => false
    t.integer  "blogger_id"
    t.string   "blogger_type"
    t.integer  "comments_count", :default => 0, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "blog_posts", ["blogger_type", "blogger_id"], :name => "index_blog_posts_on_blogger_type_and_blogger_id"

  create_table "comments", :force => true do |t|
    t.string   "title",            :limit => 50, :default => ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], :name => "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "contacts", :force => true do |t|
    t.string   "fName"
    t.string   "lName"
    t.string   "fixe"
    t.string   "natel"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courriels", :force => true do |t|
    t.string   "from"
    t.string   "subject"
    t.text     "message"
    t.datetime "send_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "is_send"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "starting_at"
    t.datetime "ending_at"
    t.string   "place"
    t.datetime "delay"
    t.string   "responsable"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "price",       :default => 10
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "events_materiaux", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "material_id"
  end

  add_index "events_materiaux", ["event_id", "material_id"], :name => "index_events_materiaux_on_event_id_and_material_id"

  create_table "events_users", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  add_index "events_users", ["event_id", "user_id"], :name => "index_events_users_on_event_id_and_user_id"

  create_table "materiaux", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "permissions", :force => true do |t|
    t.string   "action"
    t.text     "description"
    t.string   "subject_class"
    t.integer  "subject_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "all"
    t.string   "more"
    t.boolean  "un_constantize"
    t.string   "name"
  end

  create_table "permissions_roles", :id => false, :force => true do |t|
    t.integer "permission_id"
    t.integer "role_id"
  end

  add_index "permissions_roles", ["permission_id", "role_id"], :name => "index_permissions_roles_on_permission_id_and_role_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "nick_name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id", "user_id"], :name => "index_roles_users_on_role_id_and_user_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "contact_id"
    t.text     "reason"
    t.integer  "bit_mask"
  end

  add_index "users", ["contact_id"], :name => "index_users_on_contact_id"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
