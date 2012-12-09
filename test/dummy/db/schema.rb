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

ActiveRecord::Schema.define(:version => 20121206133248) do

  create_table "product_tech_specs", :force => true do |t|
    t.integer  "product_id",                   :null => false
    t.string   "entry_key",                    :null => false
    t.text     "value",                        :null => false
    t.integer  "value_type",                   :null => false
    t.boolean  "symbol_key", :default => true, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "product_tech_specs", ["product_id", "entry_key"], :name => "index_product_tech_specs_on_product_id_and_entry_key"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
