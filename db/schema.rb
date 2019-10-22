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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_22_060356) do

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "basic_recipes", force: :cascade do |t|
    t.integer "genre_id"
    t.string "cooking_name"
    t.text "cooking_explanation"
    t.string "genre_name"
    t.text "ingredient"
    t.text "how_to_cook"
    t.string "cooking_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "my_recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.integer "chapter_number"
    t.string "chapter_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "everyone_recipes", force: :cascade do |t|
    t.integer "my_recipe_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "my_recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "user_id"
    t.string "inquirer_name"
    t.string "email"
    t.string "inquiry_title"
    t.text "inquiry_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_recipes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "genre_id"
    t.string "cooking_name"
    t.text "cooking_explanation"
    t.string "genre_name"
    t.text "ingredient"
    t.text "how_to_cook"
    t.string "cooking_image_id"
    t.string "cooking_video"
    t.boolean "publishment", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer "inquiry_id"
    t.text "reply_content"
    t.string "reply_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_contents", force: :cascade do |t|
    t.integer "section_id"
    t.string "section_image_id"
    t.text "section_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_understandings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "section_id"
    t.float "understanding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "curriculum_id"
    t.integer "section_number"
    t.string "section_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_notes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.string "task_name"
    t.float "total_evaluation"
    t.float "taste_evaluation"
    t.float "look_evaluation"
    t.float "finesse_evaluation"
    t.text "important_point"
    t.text "improve_point"
    t.text "feeling"
    t.string "cooking_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_contents", force: :cascade do |t|
    t.integer "task_id"
    t.string "task_image_id"
    t.text "task_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "section_id"
    t.integer "task_number"
    t.string "task_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sei_kanji"
    t.string "mei_kanji"
    t.string "sei_kana"
    t.string "mei_kana"
    t.string "nickname"
    t.text "introduction"
    t.string "profile_image_id"
    t.datetime "deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "want_to_cooks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "my_recipe_id"
    t.integer "basic_recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
