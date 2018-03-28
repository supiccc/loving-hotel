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

ActiveRecord::Schema.define(version: 20180326100606) do

  create_table "bookings", primary_key: "idbookings", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "customer_idcustomer", null: false
    t.timestamp "bookingtime", precision: 6, null: false
    t.date "livetime", null: false
    t.integer "rooms_idrooms", null: false
    t.string "state", limit: 10, default: "待入住", null: false
    t.integer "payments_idpayments", null: false
    t.index ["customer_idcustomer"], name: "fk_bookings_customer_idx"
    t.index ["payments_idpayments"], name: "fk_bookings_payments1_idx"
    t.index ["rooms_idrooms"], name: "fk_bookings_rooms1_id x"
  end

  create_table "customers", primary_key: "idcustomer", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.string "telephone", limit: 45, null: false
  end

  create_table "guests", primary_key: "idguests", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.string "sex", limit: 10, null: false
    t.string "idcard", limit: 45, null: false
    t.integer "bookings_idbookings", null: false
    t.index ["bookings_idbookings"], name: "fk_guests_bookings1_idx"
  end

  create_table "payments", primary_key: "idpayments", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "paymentscol", limit: 10, null: false
  end

  create_table "price_band", primary_key: "idprice_band", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "season", limit: 45, null: false
    t.integer "price", null: false
  end

  create_table "room_facilities", primary_key: "idroom_facilities", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "area", null: false
    t.integer "bednum", null: false
    t.integer "hairconditon", null: false
    t.integer "telephone", null: false
    t.integer "televison", null: false
    t.integer "htoilet", null: false
    t.integer "room_type_idroom_type", null: false
    t.integer "bath", null: false
    t.index ["room_type_idroom_type"], name: "fk_room_facilities_room_type1_idx"
  end

  create_table "room_type", primary_key: "idroom_type", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "room_typecol", limit: 10, null: false
    t.integer "price_band_idprice_band", null: false
    t.index ["price_band_idprice_band"], name: "fk_room_type_price_band1_idx"
  end

  create_table "rooms", primary_key: "idrooms", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "room_type_idroom_type", null: false
    t.string "room_state", limit: 10, default: "空置", null: false
    t.index ["room_type_idroom_type"], name: "fk_rooms_room_type1_idx"
  end

  add_foreign_key "bookings", "customers", column: "customer_idcustomer", primary_key: "idcustomer", name: "fk_bookings_customer"
  add_foreign_key "bookings", "payments", column: "payments_idpayments", primary_key: "idpayments", name: "fk_bookings_payments1"
  add_foreign_key "bookings", "rooms", column: "rooms_idrooms", primary_key: "idrooms", name: "fk_bookings_rooms1"
  add_foreign_key "guests", "bookings", column: "bookings_idbookings", primary_key: "idbookings", name: "fk_guests_bookings1"
  add_foreign_key "room_facilities", "room_type", column: "room_type_idroom_type", primary_key: "idroom_type", name: "fk_room_facilities_room_type1"
  add_foreign_key "room_type", "price_band", column: "price_band_idprice_band", primary_key: "idprice_band", name: "fk_room_type_price_band1"
  add_foreign_key "rooms", "room_type", column: "room_type_idroom_type", primary_key: "idroom_type", name: "fk_rooms_room_type1"
end
