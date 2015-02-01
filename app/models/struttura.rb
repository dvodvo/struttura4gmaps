class Struttura < ActiveRecord::Base

  has_many: :itinerariostrutturas, :dependent => :destroy
#  has_many: :itinerarios, through: :itinerariostrutturas
  
  attr_accessible :nome, :destination_id, :gruppo, :stelle, :nazione_id, :regione_id, :province_id, :comune, :indirizzo, :banca, :banca_iban, :banca_intestazione, :email_conferma, :email_commerciale, :email_amministrazione, :telefono, :telefono_commerciale, :telefono_amministrazione, :commerciale_nome, :commerciale_cognome, :amministrazione_nome, :amministrazione_cognome, :partita_iva, :codice_fiscale, :prezzi_bambini, :eta_max_bambini, :tassa_soggiorno, :tassa_al_di, :tasso_fisso, :tasso, :politica_bambini, :intervallo_bambino_1, :intervallo_bambino_2, :intervallo_bambino_3, :intervallo_bambino_4, :intervallo_bambino_5, :carte_di_credito, :servizi, :posizione, :attrazioni, :web, :strutturausers_attributes, :destination, :commission, :long_stay, :long_stay_info, :translations_attributes, :strutturakeywords_attributes, :groups, :contracts, :keyword_ids, :politica_cancellation, :slug, :own_site, :italia_slow_tour, :lat, :lon, :zoom_level, :longitude, :latitude, :cap, :sms, :sms_confirm
  
  attr_writer :lonlat
 

  belongs_to :nazione
  belongs_to :regione
  belongs_to :province
  belongs_to :destination


  
  validates :nome, presence: true
  validates :comune, presence: true
  validates :province_id, presence: true
  validates :regione_id, presence: true
  validates :nazione_id, presence: true
  
  


end

