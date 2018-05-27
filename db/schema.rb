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

ActiveRecord::Schema.define(version: 2018_05_27_203303) do

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "external_files", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "action", null: false
    t.datetime "date", null: false
    t.string "table", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permission_roles", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "permission_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_roles_on_permission_id"
    t.index ["role_id"], name: "index_permission_roles_on_role_id"
  end

  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pqr_trackings", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pqr_id", null: false
    t.bigint "actual_user_id", null: false
    t.bigint "dest_user_id", null: false
    t.bigint "status_id", null: false
    t.bigint "department_id"
    t.datetime "date", null: false
    t.string "review"
    t.string "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actual_user_id"], name: "index_pqr_trackings_on_actual_user_id"
    t.index ["department_id"], name: "index_pqr_trackings_on_department_id"
    t.index ["dest_user_id"], name: "index_pqr_trackings_on_dest_user_id"
    t.index ["pqr_id"], name: "index_pqr_trackings_on_pqr_id"
    t.index ["status_id"], name: "index_pqr_trackings_on_status_id"
  end

  create_table "pqrs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "title", null: false
    t.string "subject", null: false
    t.string "description", null: false
    t.datetime "date", null: false
    t.datetime "responseDate", null: false
    t.bigint "external_file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["external_file_id"], name: "index_pqrs_on_external_file_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status_description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number", null: false
    t.date "birthdate", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.bigint "department_id"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "permission_roles", "permissions"
  add_foreign_key "permission_roles", "roles"
  add_foreign_key "pqr_trackings", "departments"
  add_foreign_key "pqr_trackings", "pqrs"
  add_foreign_key "pqr_trackings", "statuses"
  add_foreign_key "pqr_trackings", "users", column: "actual_user_id"
  add_foreign_key "pqr_trackings", "users", column: "dest_user_id"
  add_foreign_key "pqrs", "external_files"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "roles"
end
