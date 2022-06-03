--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Name: alignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alignment (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.alignment OWNER TO postgres;

--
-- Name: character; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."character" (
    id integer NOT NULL,
    name character varying NOT NULL,
    "idUser" integer,
    background character varying NOT NULL,
    "idClass" integer,
    "idRace" integer,
    "idAlignment" integer,
    life integer NOT NULL,
    "armorClass" integer NOT NULL,
    "savingThroll" integer NOT NULL,
    constitution integer NOT NULL,
    strength integer NOT NULL,
    dexterity integer NOT NULL,
    intelligence integer NOT NULL,
    wisdow integer NOT NULL,
    charism integer NOT NULL,
    experience integer NOT NULL,
    level integer NOT NULL
);


ALTER TABLE public."character" OWNER TO postgres;

--
-- Name: character_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.character_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.character_id_seq OWNER TO postgres;

--
-- Name: character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.character_id_seq OWNED BY public."character".id;


--
-- Name: class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.class OWNER TO postgres;

--
-- Name: grimoire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grimoire (
    id integer NOT NULL,
    "idMagic" integer,
    "idCharacter" integer
);


ALTER TABLE public.grimoire OWNER TO postgres;

--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    id integer NOT NULL,
    "idCharacter" integer,
    "idItem" integer,
    quantity integer NOT NULL
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    damage character varying NOT NULL,
    modifier integer NOT NULL
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: magic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.magic (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.magic OWNER TO postgres;

--
-- Name: race; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.race (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.race OWNER TO postgres;

--
-- Name: talent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.talent (
    id integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE public.talent OWNER TO postgres;

--
-- Name: talentSet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."talentSet" (
    id integer NOT NULL,
    "idCharacter" integer,
    "idTalent" integer
);


ALTER TABLE public."talentSet" OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying,
    password character varying,
    email character varying
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: character id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."character" ALTER COLUMN id SET DEFAULT nextval('public.character_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
063205dc-3bf9-4427-bda9-8d8b0c33cba7	c8d328652d605003cb8ce57edf0e370b0b3a088bbec6f0560257b8ebdb60d8cb	2022-06-02 11:26:20.688254-03	20220602142619_init	\N	\N	2022-06-02 11:26:19.652234-03	1
\.


--
-- Data for Name: alignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alignment (id, name) FROM stdin;
1	Ca¢tico
2	Neutro
3	Ordeiro
\.


--
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."character" (id, name, "idUser", background, "idClass", "idRace", "idAlignment", life, "armorClass", "savingThroll", constitution, strength, dexterity, intelligence, wisdow, charism, experience, level) FROM stdin;
\.


--
-- Data for Name: class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class (id, name) FROM stdin;
1	Cl‚rigo
2	Homem de Armas
3	Ladino
4	Mago
\.


--
-- Data for Name: grimoire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grimoire (id, "idMagic", "idCharacter") FROM stdin;
\.


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (id, "idCharacter", "idItem", quantity) FROM stdin;
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item (id, name, description, damage, modifier) FROM stdin;
\.


--
-- Data for Name: magic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.magic (id, name, description) FROM stdin;
\.


--
-- Data for Name: race; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.race (id, name) FROM stdin;
1	AnÆo
2	Elfo
3	Halfling
4	Humano
\.


--
-- Data for Name: talent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talent (id, name, description) FROM stdin;
\.


--
-- Data for Name: talentSet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."talentSet" (id, "idCharacter", "idTalent") FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, name, password, email) FROM stdin;
1	Mateus	$2b$10$f0xi2x84J0QCI8lCzWj1g.GjL6LfvnyXp3xEK.gnZi/e0lkTEQtWu	mateus@gmail.com
\.


--
-- Name: character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.character_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, true);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: alignment alignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alignment
    ADD CONSTRAINT alignment_pkey PRIMARY KEY (id);


--
-- Name: character character_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT character_pkey PRIMARY KEY (id);


--
-- Name: class class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class
    ADD CONSTRAINT class_pkey PRIMARY KEY (id);


--
-- Name: grimoire grimoire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grimoire
    ADD CONSTRAINT grimoire_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);


--
-- Name: item item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- Name: magic magic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magic
    ADD CONSTRAINT magic_pkey PRIMARY KEY (id);


--
-- Name: race race_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_pkey PRIMARY KEY (id);


--
-- Name: talentSet talentSet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."talentSet"
    ADD CONSTRAINT "talentSet_pkey" PRIMARY KEY (id);


--
-- Name: talent talent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.talent
    ADD CONSTRAINT talent_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_email_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX user_email_key ON public."user" USING btree (email);


--
-- Name: character character_idAlignment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT "character_idAlignment_fkey" FOREIGN KEY ("idAlignment") REFERENCES public.alignment(id);


--
-- Name: character character_idClass_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT "character_idClass_fkey" FOREIGN KEY ("idClass") REFERENCES public.class(id);


--
-- Name: character character_idRace_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT "character_idRace_fkey" FOREIGN KEY ("idRace") REFERENCES public.race(id);


--
-- Name: character character_idUser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."character"
    ADD CONSTRAINT "character_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES public."user"(id);


--
-- Name: grimoire grimoire_idCharacter_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grimoire
    ADD CONSTRAINT "grimoire_idCharacter_fkey" FOREIGN KEY ("idCharacter") REFERENCES public."character"(id);


--
-- Name: grimoire grimoire_idMagic_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grimoire
    ADD CONSTRAINT "grimoire_idMagic_fkey" FOREIGN KEY ("idMagic") REFERENCES public.magic(id);


--
-- Name: inventory inventory_idCharacter_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "inventory_idCharacter_fkey" FOREIGN KEY ("idCharacter") REFERENCES public."character"(id);


--
-- Name: inventory inventory_idItem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "inventory_idItem_fkey" FOREIGN KEY ("idItem") REFERENCES public.item(id);


--
-- Name: talentSet talentSet_idCharacter_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."talentSet"
    ADD CONSTRAINT "talentSet_idCharacter_fkey" FOREIGN KEY ("idCharacter") REFERENCES public."character"(id);


--
-- Name: talentSet talentSet_idTalent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."talentSet"
    ADD CONSTRAINT "talentSet_idTalent_fkey" FOREIGN KEY ("idTalent") REFERENCES public.talent(id);


--
-- PostgreSQL database dump complete
--

