--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

-- Started on 2017-11-03 17:23:45

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
-- TOC entry 196 (class 1259 OID 16394)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customer (
    srno character varying(10),
    custid integer NOT NULL,
    cname character varying(50),
    age integer,
    email character varying(100),
    gender character varying(10)
);


ALTER TABLE customer OWNER TO postgres;

--
-- TOC entry 2793 (class 0 OID 16394)
-- Dependencies: 196
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY customer (srno, custid, cname, age, email, gender) FROM stdin;
I	201	Raphaela	94	keepmymail.com	1
II	202	Opaline	30	killmail.com	1
III	203	Ophelia	85	killmail.net	1
IV	204	Ophelie	30	kir.ch.tc	0
V	205	Ora	25	klassmaster.com	0
VI	206	Oralee	34	klassmaster.net	1
VII	207	Oralia	52	klzlk.com	0
VIII	208	Oralie	83	kulturbetrieb.info	1
IX	209	Oralla	57	kurzepost.de	0
X	210	Oralle	58	letthemeatspam.com	1
XI	211	Orel	52	lhsdv.com	1
XII	212	Orelee	56	lifebyfood.com	1
XIII	213	Orelia	71	link2mail.net	1
XIV	214	Orelie	64	litedrop.com	0
XV	215	Orella	32	lol.ovpn.to	0
XVI	216	Orelle	70	lookugly.com	0
XVII	217	Oriana	89	lopl.co.cc	0
XVIII	218	Orly	35	lortemail.dk	0
XIX	219	Orsa	33	lr78.com	1
XX	220	Orsola	83	m4ilweb.info	1
XXI	221	Ortensia	82	maboard.com	1
XXII	222	Otha	47	mail-temporaire.fr	1
XXIII	223	Othelia	48	mail.by	1
XXIV	224	Othella	64	mail.mezimages.net	0
XXV	225	Othilia	43	mail2rss.org	0
XXVI	226	Othilie	62	mail333.com	0
XXVII	227	Ottilie	75	mail4trash.com	0
XXVIII	228	Page	52	mailbidon.com	1
XXIX	229	Paige	97	mailblocks.com	1
XXX	230	Paloma	52	mailcatch.com	1
XXXI	231	Pam	29	maileater.com	0
XXXII	232	Pamela	83	mailexpire.com	0
XXXIII	233	Pamelina	52	mailfreeonline.com	1
XXXIV	234	Pamella	92	mailin8r.com	0
XXXV	235	Pammi	57	mailinater.com	1
XXXVI	236	Pammie	54	mailinator.com	0
XXXVII	237	Pammy	100	mailinator.net	1
XXXVIII	238	Pandora	67	mailinator2.com	1
XXXIX	239	Pansie	76	mailincubator.com	1
XL	240	Pansy	89	mailme.ir	1
XLI	241	Paola	27	mailme.lv	0
XLII	242	Paolina	35	mailmetrash.com	0
XLIII	243	Papagena	28	mailmoat.com	0
XLIV	244	Pat	73	mailnator.com	0
XLV	245	Patience	85	mailnesia.com	0
XLVI	246	Patrica	46	mailnull.com	1
XLVII	247	Patrice	100	mailshell.com	1
XLVIII	248	Patricia	68	mailsiphon.com	1
XLIX	249	Patrizia	28	mailslite.com	1
L	250	Patsy	65	mailzilla.com	1
LI	251	Patti	56	mailzilla.org	1
LII	252	Pattie	56	mbx.cc	1
LIII	253	Patty	77	mega.zik.dj	1
LIV	254	Paula	21	meinspamschutz.de	0
LV	255	Paule	97	meltmail.com	0
LVI	256	Pauletta	36	messagebeamer.de	1
LVII	257	Paulette	85	mierdamail.com	0
LVIII	258	Pauli	74	mintemail.com	1
LIX	259	Paulie	52	moburl.com	0
LX	260	Paulina	20	moncourrier.fr.nf	1
LXI	261	Pauline	30	monemail.fr.nf	1
LXII	262	Paulita	31	monmail.fr.nf	1
LXIII	263	Pauly	97	msa.minsmail.com	1
LXIV	264	Pavia	54	mt2009.com	0
LXV	265	Pavla	74	mx0.wwwnew.eu	0
LXVI	266	Pearl	83	mycleaninbox.net	0
LXVII	267	Pearla	66	mypartyclip.de	0
LXVIII	268	Pearle	75	myphantomemail.com	0
LXIX	269	Pearline	47	myspaceinc.com	1
LXX	270	Peg	98	myspaceinc.net	1
LXXI	271	Pegeen	92	myspaceinc.org	1
LXXII	272	Peggi	76	myspacepimpedup.com	1
LXXIII	273	Peggie	82	myspamless.com	1
LXXIV	274	Peggy	58	mytrashmail.com	0
LXXV	275	Pen	85	neomailbox.com	0
LXXVI	276	Penelopa	57	nepwk.com	0
LXXVII	277	Penelope	54	nervmich.net	0
LXXVIII	278	Penni	66	nervtmich.net	1
LXXIX	279	Pennie	27	netmails.com	1
LXXX	280	Penny	75	netmails.net	1
LXXXI	281	Pepi	94	netzidiot.de	0
LXXXII	282	Pepita	71	neverbox.com	0
LXXXIII	283	Peri	22	no-spam.ws	1
LXXXIV	284	Peria	43	nobulk.com	0
LXXXV	285	Perl	38	noclickemail.com	1
LXXXVI	286	Perla	78	nogmailspam.info	0
LXXXVII	287	Perle	75	nomail.xl.cx	1
LXXXVIII	288	Perri	72	nomail2me.com	1
LXXXIX	289	Perrine	69	nomorespamemails.com	1
XC	290	Perry	59	nospam.ze.tc	1
XCI	291	Persis	93	nospam4.us	0
XCII	292	Pet	29	nospamfor.us	0
XCIII	293	Peta	28	nospamthanks.info	0
XCIV	294	Petra	50	notmailinator.com	0
XCV	295	Petrina	68	nowmymail.com	0
XCVI	296	Petronella	57	nurfuerspam.de	1
XCVII	297	Petronia	45	nus.edu.sg	1
XCVIII	298	Petronilla	97	nwldx.com	1
XCIX	299	Petronille	92	objectmail.com	1
C	300	Petunia	40	obobbo.com	1
\.


--
-- TOC entry 2671 (class 2606 OID 16398)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (custid);


-- Completed on 2017-11-03 17:23:45

--
-- PostgreSQL database dump complete
--

