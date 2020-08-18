ActiveRecord::Schema.define(version: 2020_08_18_221004) do

  create_table "battles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "opponent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "type_id"
    t.integer "trainer_id"
    t.string "species"
    t.integer "speed"
    t.integer "attack"
    t.integer "hp"
    t.integer "defence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
