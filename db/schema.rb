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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151125075821) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.string   "sdesc",               limit: 255
    t.text     "body",                limit: 65535
    t.string   "author",              limit: 255
    t.string   "fimage_file_name",    limit: 255
    t.string   "fimage_content_type", limit: 255
    t.integer  "fimage_file_size",    limit: 4
    t.datetime "fimage_updated_at"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "slug",                limit: 255
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true, using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "clubs", force: :cascade do |t|
    t.string   "cname",               limit: 255
    t.integer  "cid",                 limit: 4
    t.text     "cbody",               limit: 65535
    t.text     "extra",               limit: 65535
    t.string   "cimage_file_name",    limit: 255
    t.string   "cimage_content_type", limit: 255
    t.integer  "cimage_file_size",    limit: 4
    t.datetime "cimage_updated_at"
    t.string   "clink",               limit: 255
    t.string   "slug",                limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "clubs", ["slug"], name: "index_clubs_on_slug", unique: true, using: :btree

  create_table "departments", force: :cascade do |t|
    t.string   "dname",               limit: 255
    t.integer  "did",                 limit: 4
    t.text     "body",                limit: 65535
    t.text     "extra1",              limit: 65535
    t.string   "dimage_file_name",    limit: 255
    t.string   "dimage_content_type", limit: 255
    t.integer  "dimage_file_size",    limit: 4
    t.datetime "dimage_updated_at"
    t.string   "dlink",               limit: 255
    t.string   "slug",                limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "departments", ["slug"], name: "index_departments_on_slug", unique: true, using: :btree

  create_table "dept_faculs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "pname",      limit: 255
    t.text     "pcontent",   limit: 65535
    t.integer  "pid",        limit: 4
    t.date     "pdate"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "cont",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "idr",        limit: 4
  end

  create_table "researches", force: :cascade do |t|
    t.string   "rname",               limit: 255
    t.integer  "rid",                 limit: 4
    t.text     "rbody",               limit: 65535
    t.text     "rextra",              limit: 65535
    t.string   "rimage_file_name",    limit: 255
    t.string   "rimage_content_type", limit: 255
    t.integer  "rimage_file_size",    limit: 4
    t.datetime "rimage_updated_at"
    t.string   "rlink",               limit: 255
    t.string   "slug",                limit: 255
    t.string   "rauthor",             limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "researches", ["slug"], name: "index_researches_on_slug", unique: true, using: :btree

  create_table "slugs", force: :cascade do |t|
    t.integer  "sluggable_id",   limit: 4,                  null: false
    t.string   "sluggable_type", limit: 255,                null: false
    t.boolean  "active",         limit: 1,   default: true, null: false
    t.string   "slug",           limit: 126,                null: false
    t.string   "scope",          limit: 126
    t.datetime "created_at"
  end

  add_index "slugs", ["sluggable_type", "scope", "slug"], name: "slugs_unique", unique: true, using: :btree
  add_index "slugs", ["sluggable_type", "sluggable_id", "active"], name: "slugs_for_record", using: :btree

  create_table "staffnews", force: :cascade do |t|
    t.string   "stnews",     limit: 255
    t.integer  "stid",       limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "linkd",      limit: 255
    t.string   "pdf",        limit: 255
    t.boolean  "ispfd",      limit: 1,   default: true
  end

  create_table "studentnews", force: :cascade do |t|
    t.string   "stnews",     limit: 255
    t.integer  "stid",       limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "linkd",      limit: 255
    t.string   "pdf",        limit: 255
    t.boolean  "ispfd",      limit: 1,   default: true
  end

  create_table "thirukurals", force: :cascade do |t|
    t.text     "cont",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "idr",        limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id",       limit: 4
    t.string  "foreign_key_name", limit: 255, null: false
    t.integer "foreign_key_id",   limit: 4
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key", using: :btree
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      limit: 255,        null: false
    t.integer  "item_id",        limit: 4,          null: false
    t.string   "event",          limit: 255,        null: false
    t.string   "whodunnit",      limit: 255
    t.text     "object",         limit: 4294967295
    t.datetime "created_at"
    t.text     "object_changes", limit: 4294967295
    t.integer  "transaction_id", limit: 4
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id", using: :btree

end
