--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO gmaps_user;

--
-- Name: strutturas; Type: TABLE; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE TABLE strutturas (
    id integer NOT NULL,
    nome character varying(255),
    slug character varying(255),
    gruppo character varying(255),
    nazione_id integer,
    regione_id integer,
    province_id integer,
    destination_id integer,
    destination_alt character varying(255),
    comune character varying(255),
    cap character varying(255),
    stelle integer,
    indirizzo text,
    banca character varying(255),
    banca_iban character varying(255),
    banca_intestazione character varying(255),
    email_conferma character varying(255),
    email_commerciale character varying(255),
    email_amministrazione character varying(255),
    telefono character varying(255),
    telefono_commerciale character varying(255),
    telefono_amministrazione character varying(255),
    commerciale_nome character varying(255),
    commerciale_cognome character varying(255),
    amministrazione_nome character varying(255),
    amministrazione_cognome character varying(255),
    partita_iva character varying(255),
    codice_fiscale character varying(255),
    prezzi_bambini boolean,
    long_stay boolean,
    eta_max_bambini integer,
    tassa_soggiorno boolean,
    tassa_al_di boolean,
    tasso_fisso boolean,
    tasso numeric,
    intervallo_bambino_1 character varying(255),
    intervallo_bambino_2 character varying(255),
    intervallo_bambino_3 character varying(255),
    intervallo_bambino_4 character varying(255),
    intervallo_bambino_5 character varying(255),
    politica_bambini text,
    politica_cancellation text,
    long_stay_info text,
    carte_di_credito text,
    servizi text,
    posizione text,
    attrazioni text,
    web character varying(255),
    commission numeric DEFAULT 10::numeric,
    lat numeric(15,10),
    lon numeric(15,10),
    lonlat character varying(255),
    zoom_level integer,
    own_site boolean,
    groups boolean,
    contracts boolean,
    italia_slow_tour boolean,
    sms boolean,
    sms_confirm character varying(255),
    latitude numeric(15,10),
    longitude numeric(15,10),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.strutturas OWNER TO gmaps_user;

--
-- Name: strutturas_id_seq; Type: SEQUENCE; Schema: public; Owner: gmaps_user
--

CREATE SEQUENCE strutturas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strutturas_id_seq OWNER TO gmaps_user;

--
-- Name: strutturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gmaps_user
--

ALTER SEQUENCE strutturas_id_seq OWNED BY strutturas.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gmaps_user
--

ALTER TABLE ONLY strutturas ALTER COLUMN id SET DEFAULT nextval('strutturas_id_seq'::regclass);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: gmaps_user
--

COPY schema_migrations (version) FROM stdin;
20141019185324
\.


--
-- Data for Name: strutturas; Type: TABLE DATA; Schema: public; Owner: gmaps_user
--

COPY strutturas (id, nome, slug, gruppo, nazione_id, regione_id, province_id, destination_id, destination_alt, comune, cap, stelle, indirizzo, banca, banca_iban, banca_intestazione, email_conferma, email_commerciale, email_amministrazione, telefono, telefono_commerciale, telefono_amministrazione, commerciale_nome, commerciale_cognome, amministrazione_nome, amministrazione_cognome, partita_iva, codice_fiscale, prezzi_bambini, long_stay, eta_max_bambini, tassa_soggiorno, tassa_al_di, tasso_fisso, tasso, intervallo_bambino_1, intervallo_bambino_2, intervallo_bambino_3, intervallo_bambino_4, intervallo_bambino_5, politica_bambini, politica_cancellation, long_stay_info, carte_di_credito, servizi, posizione, attrazioni, web, commission, lat, lon, zoom_level, own_site, groups, contracts, italia_slow_tour, sms, sms_confirm, latitude, longitude, created_at, updated_at, lonlat) FROM stdin;
2	Casa Vacanza Umbra	casa-vacanza-umbra		1	20	72	\N	\N	Todi	\N	\N	\N																\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	Piscina	A 10 min a piedi dal centro storico	\N		10.0	\N	\N	\N	t	f	f	\N	\N	\N	\N	\N	2014-03-29 17:01:33.649081	2014-05-05 18:55:22.442839	\N
4	Hotel Quiete	hotel-quiete		1	11	71	1	\N	Pavia	\N	\N	\N																\N	f	\N	t	t	\N	4.0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-03-29 18:29:22.559134	2014-05-05 18:56:14.384791	\N
5	Hotel Parco dei Principi Resort	hotel-parco-dei-principi-resort	Filippo Olivieri Entertainment	1	12	7	\N	\N	Grottamare	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-04-11 06:10:22.748175	2014-05-05 18:56:20.557067	\N
6	Hotel Callistos	hotel-callistos		1	15	48	\N	\N	Tricase	\N	4	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	callistos-hotel.it	10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-04-11 12:19:33.436135	2014-05-05 18:56:57.857309	\N
7	La Terrazza Bed & Breakfast	La-Terrazza-Bed-Breakfast-LE-Lecce-Puglia		1	15	48	\N	\N	Lecce	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	\N	\N	\N	t	f	f	\N	\N	\N	\N	\N	2014-04-21 10:02:57.161724	2014-05-05 18:57:00.682918	\N
8	Cascina Caremma	cascina-caremma-agriturismo-nature-spa-besate-milano		1	11	59	3	\N	Besate	\N	\N	\N																\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	http://www.caremma.com	10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-04-29 20:19:44.85303	2014-05-05 18:57:06.858526	\N
9	Locanda Lugagnano	Locanda-Lugagnano-Cassinetta-Milano		1	11	59	3	\N	Lugagnano	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	http://www.locandalugagnano.com/	10.0	\N	\N	\N	t	f	f	\N	\N	\N	\N	\N	2014-04-29 20:28:55.735705	2014-05-05 18:57:12.844618	\N
13	La Sciguetta B&B	la-sciguetta-b-b-magenta-milano		1	11	59	3	\N	Magenta	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	lasciguetta.com	10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-05-02 09:25:25.791257	2014-05-05 18:58:00.834455	\N
12	Agriturismo Cascina Bullona	agriturismo-cascina-bullona-magenta-milano		1	11	59	3	\N	Pontevecchio di Magenta	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.agriturismobullona.it	10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-05-02 09:13:03.321872	2014-05-05 18:58:03.853118	\N
11	Agriturismo Molino Santa Marta	agriturismo-molino-santa-mara-robecco-milano		1	11	59	3	\N	Robecco sul Naviglio	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.molinosantamarta.it	10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-05-02 09:11:36.011579	2014-05-05 18:58:10.047158	\N
10	Barcella al Mulino	barcella-al-mulino-robecco-milano		1	11	59	3	\N	Robecco sul Naviglio	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	labarcella.it	10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-05-02 09:09:46.446539	2014-05-05 18:58:14.058643	\N
17	Hotel Excelsior Magenta	hotel-excelsior-magenta-milano		1	11	59	3	\N	Magenta	\N	4	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.hotelexcelsiormagenta.it	10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-05-05 07:27:31.286377	2014-05-05 18:58:46.116102	\N
16	Cascina Lema	cascina-lema-robecco-milano		1	11	59	3	\N	Robecco sul Naviglio	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.cascinalema.it	10.0	\N	\N	\N	t	f	f	\N	\N	\N	\N	\N	2014-05-05 04:46:49.685414	2014-05-05 18:58:50.135764	\N
15	Hotel Villa Teresa	hotel-villa-teresa-noto-siracusa		1	17	93	\N	\N	Noto	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.villa-teresa.eu	10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-05-04 09:41:34.648078	2014-05-05 18:58:54.676172	\N
14	La Forestina	la-forestina-cisliano-milano		1	11	59	3	\N	Cisliano	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.laforestina.it	10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-05-03 14:07:48.079295	2014-05-05 18:58:59.28986	\N
18	Masseria Montenapoleone	masseria-montenapoleone-pezze-di-greco-brindisi		1	15	19	\N	\N	Pezze di Greco	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	masseriamontenapoleone.com	10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-05-06 06:08:27.516933	2014-05-06 06:08:27.516933	\N
19	Villa Barone	villa-barone-san-vito-dei-normanni-brindisi		1	15	19	4	\N	San Vito dei Normanni	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-05-06 06:30:25.952877	2014-05-06 06:30:25.952877	\N
20	Diamante Hotel	diamante-hotel-corbetta-milano		1	11	59	3	\N	Corbetta	\N	\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	hoteldiamante.it	10.0	\N	\N	\N	t	t	t	\N	\N	\N	\N	\N	2014-05-06 14:21:04.117135	2014-05-06 14:21:04.117135	\N
3	Masseria dei Trulli	masseria-dei-trulli		1	15	95	5	\N	Martina Franca	\N	\N	\N																\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	\N	\N	\N	t	f	t	\N	\N	\N	\N	\N	2014-03-29 18:26:46.636118	2014-06-14 19:15:21.431737	\N
1	B&B de charme	b-b-de-charme		1	12	74	6	\N	Marche		\N	\N																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	Bambini gratis fino a 16 anni.	\N	\N	\N	Carta Sì, Visa, MC	a 500m dalla stazione in una via tranquilla, con giardino interno	\N		10.0	42.9171203000	13.8943881000	\N	t	f	f	f	f		\N	\N	2014-03-29 16:48:42.88132	2014-08-11 07:36:18.330611	0101000020E6100000F8DCAE3CEDC92B40B57FAF3264754540
22	Relais Mon Repos	relais-mon-repos-giovinazzo		1	15	10	5	\N	Giovinazzo	77049	\N	\N														84939275093	84939275093	\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	41.1852270000	16.6760300000	\N	f	f	f	t	f		\N	\N	2014-08-29 15:50:47.694221	2014-08-29 15:50:47.694221	\N
21	Vinny's Lounge	Vinny-s-Lounge-Bari		1	15	10	5	\N	Bari	78000	\N	\N														15129039476	15129039476	\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	41.1242220000	16.8707370000	\N	t	t	t	t	f		\N	\N	2014-08-29 15:34:52.292462	2014-09-05 08:34:24.485664	0101000020E6100000CA6ABA9EE8DE3040CCB8A981E68F4440
23	Villa Catalano B&B	villa-catalano-paola		1	5	29	\N	\N	Paola	87027	\N	via Fiego																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.villacatalano.com	10.0	16.0353216934	39.3700971062	\N	t	t	t	t	f		\N	\N	2014-09-09 06:42:55.924347	2014-09-09 06:52:43.397807	0101000020E610000093BC8B575FAF43400AFEADD70A093040
24	San Placido Inn	san-placido-inn-catania		1	17	25	7	\N	Catania	95131	\N	Piazza San Placido, 3																\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	37.5028327122	15.0895596000	\N	f	f	f	t	f		37.5028327122	\N	2014-09-11 05:20:41.942217	2014-09-11 05:20:41.942217	\N
25	Gresi Hotel	gresi-hotel-catania		1	17	25	7	\N	Catania	95129	3	via Pacini, 28																\N	f	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	37.5097817122	15.0874103500	\N	t	t	t	t	f		37.5097817122	\N	2014-09-11 07:18:11.237801	2014-09-11 07:18:11.237801	\N
26	Vigne di Salamina	vigne-di-salamina-fasano	Trulli on line	1	15	19	8	\N	Fasano		\N																	\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	www.trullionline.com	10.0	40.7890320000	17.3935180000	\N	t	f	f	t	f		40.7890320000	\N	2014-12-11 13:02:28.536516	2014-12-11 13:02:28.536516	\N
27	Trullo Terturiello	trullo-terturiello-ceglie-messapica	Trulli on line	1	15	19	8	\N	Ceglie Messapica		\N																	\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	40.6739120000	17.4424590000	\N	t	f	f	t	f		40.6739120000	\N	2014-12-11 13:14:16.007262	2014-12-11 13:14:16.007262	\N
28	Trullo Antico	trullo-antico-fasano	Trulli on line	1	15	19	8	\N	Fasano		\N																	\N	t	\N	f	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		10.0	40.8340140000	17.3143190000	\N	f	f	f	t	f		40.8340140000	\N	2014-12-11 13:32:06.960325	2014-12-11 13:32:06.960325	\N
\.


--
-- Name: strutturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gmaps_user
--

SELECT pg_catalog.setval('strutturas_id_seq', 1, true);


--
-- Name: strutturas_pkey; Type: CONSTRAINT; Schema: public; Owner: gmaps_user; Tablespace: 
--

ALTER TABLE ONLY strutturas
    ADD CONSTRAINT strutturas_pkey PRIMARY KEY (id);


--
-- Name: index_strutturas_on_cap; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_cap ON strutturas USING btree (cap);


--
-- Name: index_strutturas_on_comune; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_comune ON strutturas USING btree (comune);


--
-- Name: index_strutturas_on_destination_alt; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_destination_alt ON strutturas USING btree (destination_alt);


--
-- Name: index_strutturas_on_destination_id; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_destination_id ON strutturas USING btree (destination_id);


--
-- Name: index_strutturas_on_lat; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_lat ON strutturas USING btree (lat);


--
-- Name: index_strutturas_on_lon; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_lon ON strutturas USING btree (lon);


--
-- Name: index_strutturas_on_nazione_id; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_nazione_id ON strutturas USING btree (nazione_id);


--
-- Name: index_strutturas_on_nome; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_nome ON strutturas USING btree (nome);


--
-- Name: index_strutturas_on_province_id; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_province_id ON strutturas USING btree (province_id);


--
-- Name: index_strutturas_on_regione_id; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_regione_id ON strutturas USING btree (regione_id);


--
-- Name: index_strutturas_on_slug; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE INDEX index_strutturas_on_slug ON strutturas USING btree (slug);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: gmaps_user; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: gmaps_user
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM gmaps_user;
GRANT ALL ON SCHEMA public TO gmaps_user;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

