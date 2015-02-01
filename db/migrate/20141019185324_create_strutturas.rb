class CreateStrutturas < ActiveRecord::Migration
  def change
    create_table :strutturas do |t|
      t.string :nome
      t.string :slug
      t.string :gruppo
      t.references :nazione
      t.references :regione
      t.references :province
      t.references :destination
      t.string :destination_alt
      t.string :comune
      t.string :cap
      t.integer :stelle
      t.text :indirizzo
      t.string :banca
      t.string :banca_iban
      t.string :banca_intestazione
      t.string :email_conferma
      t.string :email_commerciale
      t.string :email_amministrazione
      t.string :telefono
      t.string :telefono_commerciale
      t.string :telefono_amministrazione
      t.string :commerciale_nome
      t.string :commerciale_cognome
      t.string :amministrazione_nome
      t.string :amministrazione_cognome
      t.string :partita_iva
      t.string :codice_fiscale
      t.boolean :prezzi_bambini
      t.boolean :long_stay
      t.integer :eta_max_bambini
      t.boolean :tassa_soggiorno
      t.boolean :tassa_al_di
      t.boolean :tasso_fisso
      t.decimal :tasso
      t.string :intervallo_bambino_1
      t.string :intervallo_bambino_2
      t.string :intervallo_bambino_3
      t.string :intervallo_bambino_4
      t.string :intervallo_bambino_5
      t.text :politica_bambini
      t.text :politica_cancellation
      t.text :long_stay_info
      t.text :carte_di_credito
      t.text :servizi
      t.text :posizione
      t.text :attrazioni
      t.string :web
      t.boolean :tasso_fisso
      t.decimal :commission, :default => "10"
      t.decimal :lat, :precision => 15, :scale => 10
      t.decimal :lon, :precision => 15, :scale => 10
      t.string  :lonlat
      t.integer :zoom_level
      t.boolean :own_site
      t.boolean :groups
      t.boolean :contracts
      t.boolean :italia_slow_tour
      t.boolean :sms
      t.string :sms_confirm
      t.decimal :latitude, :precision => 15, :scale => 10
      t.decimal :longitude, :precision => 15, :scale => 10

      t.timestamps
    end
    add_index :strutturas, :nazione_id
    add_index :strutturas, :regione_id
    add_index :strutturas, :province_id
    add_index :strutturas, :destination_id
    add_index :strutturas, :destination_alt
    add_index :strutturas, :comune
    add_index :strutturas, :cap
    add_index :strutturas, :nome
    add_index :strutturas, :slug
    add_index :strutturas, :lat
    add_index :strutturas, :lon
  end
end
