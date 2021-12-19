# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_18_091451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "convertings", id: :serial, force: :cascade do |t|
    t.string "metric_name", limit: 20
    t.string "household_name", limit: 20
    t.decimal "coefficient", precision: 15, scale: 2
    t.integer "product_id"
  end

  create_table "lists", id: :integer, default: -> { "nextval('product_list_id_seq'::regclass)" }, force: :cascade do |t|
    t.decimal "count", precision: 15, scale: 2
    t.string "metric_name", limit: 20
    t.integer "product_id"
    t.integer "recipe_id"
  end

  create_table "products", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 20
  end

  create_table "recipes", id: :integer, default: -> { "nextval('recipe_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "description", limit: 1000
    t.string "name", limit: 20
  end

end
