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

ActiveRecord::Schema.define(version: 2021_09_29_022845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_seats", force: :cascade do |t|
    t.integer "booking_ticket_id"
    t.integer "seat_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "booking_tickets", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "status"
    t.integer "membership_id"
    t.datetime "create_at"
    t.integer "discount"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "film_id"
    t.integer "seat_id"
    t.integer "room_id"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.integer "total_screen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password"
    t.date "dat_of_birth"
    t.string "phone_number"
    t.integer "gender"
    t.integer "membership_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
  end

  create_table "film_types", force: :cascade do |t|
    t.string "type_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "film_name"
    t.string "film_day"
    t.string "size_day"
    t.string "language"
    t.integer "film_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "author"
    t.string "description"
    t.integer "status"
    t.integer "time"
    t.string "actor"
    t.integer "room_id"
    t.string "image_url"
  end

  create_table "foobs", force: :cascade do |t|
    t.string "food_name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "member_ship_ranks", force: :cascade do |t|
    t.integer "rank"
    t.integer "discount"
    t.integer "discount_service"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "member_point"
    t.integer "rank_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_foobs", force: :cascade do |t|
    t.string "food_name"
    t.integer "bookingticket_id"
    t.integer "food_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "cinema_id"
    t.integer "total_room"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seat_reserveds", force: :cascade do |t|
    t.integer "status"
    t.integer "bookingticket_id"
    t.integer "show_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "status"
    t.integer "price"
  end

  create_table "shows", force: :cascade do |t|
    t.datetime "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
