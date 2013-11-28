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

ActiveRecord::Schema.define(:version => 20131119212647) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.string   "hr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "components", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "kind_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deploy_links", :force => true do |t|
    t.integer  "deployment_id"
    t.integer  "host_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "deployments", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.string   "hr"
    t.integer  "sub_category_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "stacked"
  end

  add_index "deployments", ["sub_category_id"], :name => "index_deployments_on_sub_category_id"

  create_table "gravities", :force => true do |t|
    t.integer  "component_id"
    t.integer  "connected_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "gravities", ["component_id", "connected_id"], :name => "index_gravities_on_component_id_and_connected_id", :unique => true

  create_table "kinds", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "universe_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sub_categories", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.string   "hr"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sub_categories", ["category_id"], :name => "index_sub_categories_on_category_id"

  create_table "universes", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usages", :force => true do |t|
    t.integer  "component_id"
    t.integer  "connected_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "usages", ["component_id", "connected_id"], :name => "index_usages_on_component_id_and_connected_id", :unique => true

end
