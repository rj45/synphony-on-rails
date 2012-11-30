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

ActiveRecord::Schema.define(:version => 20121128214929) do

  create_table "api_keys", :force => true do |t|
    t.integer  "user_id"
    t.string   "auth_token"
    t.string   "application"
    t.string   "version"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "api_keys", ["auth_token"], :name => "index_api_keys_on_auth_token"
  add_index "api_keys", ["user_id"], :name => "index_api_keys_on_user_id"

  create_table "graphemes", :force => true do |t|
    t.integer  "language_project_id"
    t.string   "name"
    t.string   "category"
    t.boolean  "zero_spaced"
    t.integer  "word_frequency"
    t.integer  "text_frequency"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "graphemes", ["language_project_id"], :name => "index_graphemes_on_language_project_id"

  create_table "language_projects", :force => true do |t|
    t.string   "slug"
    t.string   "english_name"
    t.string   "local_name"
    t.string   "script"
    t.boolean  "public"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "language_projects", ["user_id"], :name => "index_language_projects_on_user_id"

  create_table "phonemes", :force => true do |t|
    t.integer  "language_project_id"
    t.string   "name"
    t.string   "ipa"
    t.string   "category"
    t.integer  "word_frequency"
    t.integer  "text_frequency"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "phonemes", ["language_project_id"], :name => "index_phonemes_on_language_project_id"

  create_table "sentence_spelling_patterns", :force => true do |t|
    t.integer  "sentence_id"
    t.integer  "spelling_pattern_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "sentence_spelling_patterns", ["sentence_id"], :name => "index_sentence_spelling_patterns_on_sentence_id"
  add_index "sentence_spelling_patterns", ["spelling_pattern_id"], :name => "index_sentence_spelling_patterns_on_spelling_pattern_id"

  create_table "sentence_words", :force => true do |t|
    t.integer  "position"
    t.integer  "word_id"
    t.integer  "sentence_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sentence_words", ["sentence_id"], :name => "index_sentence_words_on_sentence_id"
  add_index "sentence_words", ["word_id"], :name => "index_sentence_words_on_word_id"

  create_table "sentences", :force => true do |t|
    t.integer  "language_project_id"
    t.string   "reference"
    t.string   "body"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "sentences", ["language_project_id"], :name => "index_sentences_on_language_project_id"

  create_table "sequence_spelling_patterns", :force => true do |t|
    t.integer  "position"
    t.integer  "sequence_id"
    t.integer  "spelling_pattern_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "sequence_spelling_patterns", ["sequence_id"], :name => "index_sequence_spelling_patterns_on_sequence_id"
  add_index "sequence_spelling_patterns", ["spelling_pattern_id"], :name => "index_sequence_spelling_patterns_on_spelling_pattern_id"

  create_table "sequences", :force => true do |t|
    t.integer  "language_project_id"
    t.string   "name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "sequences", ["language_project_id"], :name => "index_sequences_on_language_project_id"

  create_table "spelling_patterns", :force => true do |t|
    t.integer  "language_project_id"
    t.integer  "grapheme_id"
    t.integer  "phoneme_id"
    t.integer  "word_frequency"
    t.integer  "text_frequency"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "spelling_patterns", ["grapheme_id"], :name => "index_spelling_patterns_on_grapheme_id"
  add_index "spelling_patterns", ["language_project_id"], :name => "index_spelling_patterns_on_language_project_id"
  add_index "spelling_patterns", ["phoneme_id"], :name => "index_spelling_patterns_on_phoneme_id"

  create_table "user_language_projects", :force => true do |t|
    t.integer  "user_id"
    t.integer  "language_project_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "user_language_projects", ["language_project_id"], :name => "index_user_language_projects_on_language_project_id"
  add_index "user_language_projects", ["user_id"], :name => "index_user_language_projects_on_user_id"

  create_table "user_spelling_patterns", :force => true do |t|
    t.integer  "position"
    t.integer  "user_id"
    t.integer  "spelling_pattern_id"
    t.boolean  "focus"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "language_project_id"
  end

  add_index "user_spelling_patterns", ["spelling_pattern_id"], :name => "index_user_spelling_patterns_on_spelling_pattern_id"
  add_index "user_spelling_patterns", ["user_id"], :name => "index_user_spelling_patterns_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "word_spelling_patterns", :force => true do |t|
    t.integer  "position"
    t.integer  "word_id"
    t.integer  "spelling_pattern_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "word_spelling_patterns", ["spelling_pattern_id"], :name => "index_word_spelling_patterns_on_spelling_pattern_id"
  add_index "word_spelling_patterns", ["word_id"], :name => "index_word_spelling_patterns_on_word_id"

  create_table "words", :force => true do |t|
    t.integer  "language_project_id"
    t.string   "name"
    t.integer  "text_frequency"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "words", ["language_project_id"], :name => "index_words_on_language_project_id"

end
