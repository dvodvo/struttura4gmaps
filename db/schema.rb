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

ActiveRecord::Schema.define(:version => 20150201120352) do

  create_table "itinerariostrutturas", :force => true do |t|
    t.integer  "itinerario_id"
    t.integer  "struttura_id"
    t.integer  "creator_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "strutturas", :force => true do |t|
    t.string   "nome"
    t.string   "slug"
    t.string   "gruppo"
    t.integer  "nazione_id"
    t.integer  "regione_id"
    t.integer  "province_id"
    t.integer  "destination_id"
    t.string   "destination_alt"
    t.string   "comune"
    t.string   "cap"
    t.integer  "stelle"
    t.text     "indirizzo"
    t.string   "banca"
    t.string   "banca_iban"
    t.string   "banca_intestazione"
    t.string   "email_conferma"
    t.string   "email_commerciale"
    t.string   "email_amministrazione"
    t.string   "telefono"
    t.string   "telefono_commerciale"
    t.string   "telefono_amministrazione"
    t.string   "commerciale_nome"
    t.string   "commerciale_cognome"
    t.string   "amministrazione_nome"
    t.string   "amministrazione_cognome"
    t.string   "partita_iva"
    t.string   "codice_fiscale"
    t.boolean  "prezzi_bambini"
    t.boolean  "long_stay"
    t.integer  "eta_max_bambini"
    t.boolean  "tassa_soggiorno"
    t.boolean  "tassa_al_di"
    t.boolean  "tasso_fisso"
    t.decimal  "tasso"
    t.string   "intervallo_bambino_1"
    t.string   "intervallo_bambino_2"
    t.string   "intervallo_bambino_3"
    t.string   "intervallo_bambino_4"
    t.string   "intervallo_bambino_5"
    t.text     "politica_bambini"
    t.text     "politica_cancellation"
    t.text     "long_stay_info"
    t.text     "carte_di_credito"
    t.text     "servizi"
    t.text     "posizione"
    t.text     "attrazioni"
    t.string   "web"
    t.decimal  "commission"
    t.decimal  "lat",                      :precision => 15, :scale => 10
    t.decimal  "lon",                      :precision => 15, :scale => 10
    t.string   "lonlat"
    t.integer  "zoom_level"
    t.boolean  "own_site"
    t.boolean  "groups"
    t.boolean  "contracts"
    t.boolean  "italia_slow_tour"
    t.boolean  "sms"
    t.string   "sms_confirm"
    t.decimal  "latitude",                 :precision => 15, :scale => 10
    t.decimal  "longitude",                :precision => 15, :scale => 10
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
  end

  add_index "strutturas", ["cap"], :name => "index_strutturas_on_cap"
  add_index "strutturas", ["comune"], :name => "index_strutturas_on_comune"
  add_index "strutturas", ["destination_alt"], :name => "index_strutturas_on_destination_alt"
  add_index "strutturas", ["destination_id"], :name => "index_strutturas_on_destination_id"
  add_index "strutturas", ["lat"], :name => "index_strutturas_on_lat"
  add_index "strutturas", ["lon"], :name => "index_strutturas_on_lon"
  add_index "strutturas", ["nazione_id"], :name => "index_strutturas_on_nazione_id"
  add_index "strutturas", ["nome"], :name => "index_strutturas_on_nome"
  add_index "strutturas", ["province_id"], :name => "index_strutturas_on_province_id"
  add_index "strutturas", ["regione_id"], :name => "index_strutturas_on_regione_id"
  add_index "strutturas", ["slug"], :name => "index_strutturas_on_slug"

end
