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

ActiveRecord::Schema[7.0].define(version: 2023_06_07_101053) do
  create_table "rails_i18n_manager_translation_apps", force: :cascade do |t|
    t.string "name"
    t.string "default_locale"
    t.text "additional_locales"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rails_i18n_manager_translation_keys", force: :cascade do |t|
    t.string "key"
    t.integer "translation_app_id"
    t.boolean "active", default: true, null: false
    t.datetime "updated_at", precision: nil
    t.index ["translation_app_id"], name: "index_translation_keys_on_translation_app_id"
  end

  create_table "rails_i18n_manager_translation_values", force: :cascade do |t|
    t.integer "translation_key_id"
    t.string "locale", limit: 5
    t.string "translation"
    t.datetime "updated_at", precision: nil
    t.index ["translation_key_id"], name: "index_translation_values_on_translation_key_id"
  end

end
