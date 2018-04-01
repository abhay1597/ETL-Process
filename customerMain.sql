--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

-- Started on 2017-11-03 17:29:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16404)
-- Name: customermain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customermain (
    srno character varying(10),
    custid integer NOT NULL,
    name character varying(50),
    age integer,
    email character varying(100),
    gender character varying(10)
);


ALTER TABLE customermain OWNER TO postgres;

--
-- TOC entry 2793 (class 0 OID 16404)
-- Dependencies: 197
-- Data for Name: customermain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customermain (srno, custid, name, age, email, gender) FROM stdin;
0	4	Abagail	60	michelle-878@hotmail.com	Female
1	102	Berty	84	discardmail.de	Male
2	201	Raphaela	94	keepmymail.com	Male
3	10	Abbye	84	insyirah_powergals@hotmail.com	Male
4	103	Beryl	59	Disposableemailaddresses:emailmiser.com	Male
5	203	Ophelia	85	killmail.net	Male
6	12	Abigail	95	ifah_duff@hotmail.com	Male
7	110	Bethany	62	dodgit.com	Male
8	207	Oralia	52	klzlk.com	Female
9	14	Abra	63	choco_ela@hotmail.com	Female
10	115	Betta	68	dump-email.info	Female
11	208	Oralie	83	kulturbetrieb.info	Male
12	17	Adaline	70	choco_ela@hotmail.com	Female
13	117	Bette-Ann	57	dumpmail.de	Female
14	209	Oralla	57	kurzepost.de	Female
15	21	Addi	66	nas_wify011005@hotmail.com	Male
16	118	Betteann	64	dumpyemail.com	Female
17	210	Oralle	58	letthemeatspam.com	Male
18	26	Adela	81	fionachiwei@hotmail.com	Female
19	120	Betti	63	email60.com	Male
20	211	Orel	52	lhsdv.com	Male
21	29	Adele	51	burgergirl96@gmail.com	Male
22	121	Bettina	61	emaildienst.de	Male
23	212	Orelee	56	lifebyfood.com	Male
24	33	Adelind	86	ngai_nicole@hotmail.com	Male
25	124	Bettye	55	emailinfive.com	Female
26	213	Orelia	71	link2mail.net	Male
27	36	Adelle	85	kid_diyanah@hotmail.com	Female
28	125	Beulah	96	emailmiser.com	Female
29	214	Orelie	64	litedrop.com	Female
30	41	Adina	71	insyirah_powergals@hotmail.com	Female
31	127	Beverie	94	emailtemporario.com.br	Female
32	216	Orelle	70	lookugly.com	Female
33	45	Adorne	87	alicia-0809@hotmail.com	Female
34	130	Beverlie	75	emailx.at.hm	Male
35	217	Oriana	89	lopl.co.cc	Female
36	49	Adrian	68	goodyme@hotmail.com	Male
37	133	Bianca	68	enterto.com	Male
38	220	Orsola	83	m4ilweb.info	Male
39	52	Adrianna	52	bluebear_mas66@hotmail.com	Male
40	134	Bianka	98	ephemail.net	Female
41	221	Ortensia	82	maboard.com	Male
42	54	Adriena	66	redgurlz_3@hotmail.com	Female
43	135	Bibbie	68	etranquil.com	Male
44	224	Othella	64	mail.mezimages.net	Female
45	57	Aeriela	60	nur-filzah@hotmail.com	Female
46	136	Bibby	80	etranquil.net	Female
47	226	Othilie	62	mail333.com	Female
48	59	Afton	62	quik_boi93@hotmail.com	Female
49	139	Biddie	96	fakeinbox.com	Male
50	227	Ottilie	75	mail4trash.com	Female
51	61	Agace	87	xuanji06@hotmail.com	Male
52	141	Bidget	67	fastacura.com	Female
53	228	Page	52	mailbidon.com	Male
54	63	Agatha	64	tweety_butt@hotmail.com	Male
55	143	Bill	63	fastchrysler.com	Female
56	229	Paige	97	mailblocks.com	Male
57	71	Agnese	56	deepubhandari75@hotmail.com	Male
58	144	Billi	95	fastkawasaki.com	Female
59	230	Paloma	52	mailcatch.com	Male
60	74	Agnola	52	sachhi52@hotmail.com	Female
61	145	Billie	98	fastmazda.com	Female
62	232	Pamela	83	mailexpire.com	Female
63	77	Aidan	67	khan_golden@hotmail.com	Female
64	146	Billy	99	fastmitsubishi.com	Male
65	233	Pamelina	52	mailfreeonline.com	Male
66	81	Ailee	58	rafee90@hotmail.com	Female
67	148	Binni	62	fastsubaru.com	Male
68	234	Pamella	92	mailin8r.com	Female
69	83	Ailene	65	dn_thapa@hotmail.com	Male
70	150	Binny	68	fasttoyota.com	Male
71	235	Pammi	57	mailinater.com	Male
72	87	Ailis	59	ramulama_bamjan@hotmail.com	Male
73	152	Birdie	83	filzmail.com	Male
74	236	Pammie	54	mailinator.com	Female
75	89	Ailyn	93	sag_sameer@hotmail.com	Male
76	153	Birgit	52	fizmail.com	Male
77	237	Pammy	100	mailinator.net	Male
78	91	Aimee	53	puja_shakya@hotmail.com	Female
79	154	Birgitta	99	fr33mail.info	Female
80	238	Pandora	67	mailinator2.com	Male
81	96	Ainslie	93	dickey_143@hotmail.com	Male
82	155	Blair	85	frapmail.com	Female
83	239	Pansie	76	mailincubator.com	Male
84	98	Alaine	67	koi_dil@hotmail.com	Male
85	156	Blaire	81	front14.org	Male
86	240	Pansy	89	mailme.ir	Male
87	100	Alana	77	pratimaaryal@hotmail.com	Male
88	157	Blake	64	fux0ringduh.com	Female
89	244	Pat	73	mailnator.com	Female
90	161	Blanch	86	getonemail.com	Male
91	245	Patience	85	mailnesia.com	Female
92	163	Blanche	80	ghosttexter.de	Male
93	247	Patrice	100	mailshell.com	Male
94	166	Blinny	100	gowikibooks.com	Female
95	248	Patricia	68	mailsiphon.com	Male
96	168	Blisse	66	gowikicars.com	Female
97	250	Patsy	65	mailzilla.com	Male
98	170	Blondell	98	gowikigames.com	Male
99	251	Patti	56	mailzilla.org	Male
100	172	Blondie	55	gowikinetwork.com	Male
101	252	Pattie	56	mbx.cc	Male
102	176	Bobbee	60	greensloth.com	Female
103	253	Patty	77	mega.zik.dj	Male
104	178	Bobbi	64	guerillamail.biz	Male
105	255	Paule	97	meltmail.com	Female
106	181	Bobbye	64	guerillamail.org	Female
107	257	Paulette	85	mierdamail.com	Female
108	184	Bobine	93	guerrillamail.de	Female
109	258	Pauli	74	mintemail.com	Male
110	187	Bonnee	76	guerrillamailblock.com	Male
111	259	Paulie	52	moburl.com	Female
112	189	Bonnibelle	88	h8s.org	Male
113	263	Pauly	97	msa.minsmail.com	Male
114	192	Brana	99	hidemail.de	Female
115	264	Pavia	54	mt2009.com	Female
116	194	Brande	94	hotpop.com	Female
117	265	Pavla	74	mx0.wwwnew.eu	Female
118	198	Brandie	87	ihateyoualot.info	Male
119	266	Pearl	83	mycleaninbox.net	Female
120	267	Pearla	66	mypartyclip.de	Female
121	270	Peg	98	myspaceinc.net	Male
122	272	Peggi	76	myspacepimpedup.com	Male
123	274	Peggy	58	mytrashmail.com	Female
124	276	Penelopa	57	nepwk.com	Female
125	278	Penni	66	nervtmich.net	Male
126	281	Pepi	94	netzidiot.de	Female
127	286	Perla	78	nogmailspam.info	Female
128	288	Perri	72	nomail2me.com	Male
129	290	Perry	59	nospam.ze.tc	Male
130	295	Petrina	68	nowmymail.com	Female
131	298	Petronilla	97	nwldx.com	Male
\.


--
-- TOC entry 2671 (class 2606 OID 16408)
-- Name: customermain customermain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customermain
    ADD CONSTRAINT customermain_pkey PRIMARY KEY (custid);


-- Completed on 2017-11-03 17:29:18

--
-- PostgreSQL database dump complete
--

