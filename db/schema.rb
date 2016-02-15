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

ActiveRecord::Schema.define(version: 20160212095302) do

  create_table "admins", force: :cascade do |t|
    t.string   "order_party"
    t.string   "purchase_party"
    t.string   "chem"
    t.string   "chem_typ"
    t.string   "ra_material"
    t.string   "mouldno"
    t.string   "finishgoods"
    t.string   "mach_use"
    t.string   "reason_idle"
    t.string   "work_nature"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "chemical_types", force: :cascade do |t|
    t.string   "chemical_type_list"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "chemicals", force: :cascade do |t|
    t.string   "chemical_list"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "color_issues", force: :cascade do |t|
    t.string   "color_issue_list"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "finished_goods_names", force: :cascade do |t|
    t.string   "finished_goods_name_list"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "order_no"
    t.string   "order_date"
    t.string   "color_issues"
    t.string   "rm_qty"
    t.string   "che_qty"
    t.string   "rg_qty"
    t.string   "party"
    t.string   "issue_slip_no"
    t.string   "issue_date"
    t.string   "machine_no"
    t.string   "shift"
    t.string   "chem_qty"
    t.string   "chem_qty_return"
    t.string   "chem_rate"
    t.string   "generated"
    t.string   "lumps"
    t.string   "qty_after_rg"
    t.string   "rm_issues"
    t.string   "rm_consume"
    t.string   "rm_qty_return"
    t.string   "rm_rate"
    t.string   "rg_material_issues"
    t.string   "rg_qty_issued"
    t.string   "rg_qty_return"
    t.string   "rg_consume"
    t.string   "rg_rate"
    t.string   "rm_cost"
    t.string   "che_cost"
    t.string   "rg_cost"
    t.string   "consolidated_qty"
    t.string   "consolidated_cost"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "chemicals_type"
    t.datetime "deleted_at"
  end

  add_index "issues", ["deleted_at"], name: "index_issues_on_deleted_at"

  create_table "labours", force: :cascade do |t|
    t.string   "order_no"
    t.string   "nature"
    t.string   "difference"
    t.string   "dated"
    t.string   "rate_per_person"
    t.string   "efficiency"
    t.string   "party"
    t.string   "cost_per_shift"
    t.string   "no_of_hrs_idle"
    t.string   "issue_slip_no"
    t.string   "no_of_mins_idle"
    t.string   "date"
    t.string   "no_of_item_produced"
    t.string   "reasons_for_idle"
    t.string   "weight_in_gms"
    t.string   "idle_time_reasons_desc"
    t.string   "no_of_cavity"
    t.string   "spares_name"
    t.string   "shift"
    t.string   "cycle_time"
    t.string   "spares_cost"
    t.string   "no_of_persons"
    t.string   "working_hrs"
    t.string   "supervisor_name"
    t.string   "other_work"
    t.string   "expected_production"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "mach_used"
    t.string   "goods_finished"
    t.string   "mould"
    t.datetime "deleted_at"
  end

  add_index "labours", ["deleted_at"], name: "index_labours_on_deleted_at"

  create_table "machine_nos", force: :cascade do |t|
    t.string   "machine_no_list"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "machine_useds", force: :cascade do |t|
    t.string   "machine_used_list"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "mould_nos", force: :cascade do |t|
    t.string   "mould_no_list"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "nature_of_works", force: :cascade do |t|
    t.string   "nature_of_work_list"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "order_summaries", force: :cascade do |t|
    t.string   "order_no"
    t.string   "order_date"
    t.string   "scheduled_date"
    t.string   "party"
    t.string   "goods_finished"
    t.string   "nos"
    t.string   "ra_material"
    t.string   "rm_qty_per_item"
    t.string   "chemicals"
    t.string   "color_std"
    t.string   "chemical_qty"
    t.string   "total_kgs"
    t.string   "total_rm_kgs"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "deleted_at"
  end

  add_index "order_summaries", ["deleted_at"], name: "index_order_summaries_on_deleted_at"

  create_table "party_orders", force: :cascade do |t|
    t.string   "party_order_list"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "party_purchases", force: :cascade do |t|
    t.string   "party_purchase_list"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "item"
    t.string   "bill_value"
    t.string   "grn_no"
    t.string   "desc"
    t.string   "rate"
    t.string   "date"
    t.string   "debit"
    t.string   "party"
    t.string   "qty_accepted"
    t.string   "reasons"
    t.string   "trading_material"
    t.string   "rejected"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "select_report"
    t.datetime "deleted_at"
    t.string   "qty_received"
  end

  add_index "purchases", ["deleted_at"], name: "index_purchases_on_deleted_at"

  create_table "raw_materials", force: :cascade do |t|
    t.string   "raw_material_list"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "reason_for_idle_times", force: :cascade do |t|
    t.string   "reason_for_idle_time_list"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "type_of_chemicals", force: :cascade do |t|
    t.string   "type_of_chemical_list"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "role"
  end

end
