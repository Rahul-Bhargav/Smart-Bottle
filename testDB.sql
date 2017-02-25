--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: bottle; Type: TABLE; Schema: public; Owner: rahulsurabhi
--

CREATE TABLE bottle (
    id integer NOT NULL,
    name text,
    capacity integer DEFAULT 1000
);


ALTER TABLE bottle OWNER TO rahulsurabhi;

--
-- Name: bottle_id_seq; Type: SEQUENCE; Schema: public; Owner: rahulsurabhi
--

CREATE SEQUENCE bottle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bottle_id_seq OWNER TO rahulsurabhi;

--
-- Name: bottle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rahulsurabhi
--

ALTER SEQUENCE bottle_id_seq OWNED BY bottle.id;


--
-- Name: date_bottle; Type: TABLE; Schema: public; Owner: rahulsurabhi
--

CREATE TABLE date_bottle (
    "timestamp" date,
    bottle_id integer NOT NULL,
    consumption integer
);


ALTER TABLE date_bottle OWNER TO rahulsurabhi;

--
-- Name: date_bottle_bottle_id_seq; Type: SEQUENCE; Schema: public; Owner: rahulsurabhi
--

CREATE SEQUENCE date_bottle_bottle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE date_bottle_bottle_id_seq OWNER TO rahulsurabhi;

--
-- Name: date_bottle_bottle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rahulsurabhi
--

ALTER SEQUENCE date_bottle_bottle_id_seq OWNED BY date_bottle.bottle_id;


--
-- Name: user_bottle; Type: TABLE; Schema: public; Owner: rahulsurabhi
--

CREATE TABLE user_bottle (
    user_id integer NOT NULL,
    bottle_id integer NOT NULL
);


ALTER TABLE user_bottle OWNER TO rahulsurabhi;

--
-- Name: user_bottle_bottle_id_seq; Type: SEQUENCE; Schema: public; Owner: rahulsurabhi
--

CREATE SEQUENCE user_bottle_bottle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_bottle_bottle_id_seq OWNER TO rahulsurabhi;

--
-- Name: user_bottle_bottle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rahulsurabhi
--

ALTER SEQUENCE user_bottle_bottle_id_seq OWNED BY user_bottle.bottle_id;


--
-- Name: user_bottle_user_id_seq; Type: SEQUENCE; Schema: public; Owner: rahulsurabhi
--

CREATE SEQUENCE user_bottle_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_bottle_user_id_seq OWNER TO rahulsurabhi;

--
-- Name: user_bottle_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rahulsurabhi
--

ALTER SEQUENCE user_bottle_user_id_seq OWNED BY user_bottle.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: rahulsurabhi
--

CREATE TABLE users (
    id integer NOT NULL,
    name text,
    address text
);


ALTER TABLE users OWNER TO rahulsurabhi;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: rahulsurabhi
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO rahulsurabhi;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rahulsurabhi
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: bottle id; Type: DEFAULT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY bottle ALTER COLUMN id SET DEFAULT nextval('bottle_id_seq'::regclass);


--
-- Name: date_bottle bottle_id; Type: DEFAULT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY date_bottle ALTER COLUMN bottle_id SET DEFAULT nextval('date_bottle_bottle_id_seq'::regclass);


--
-- Name: user_bottle user_id; Type: DEFAULT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY user_bottle ALTER COLUMN user_id SET DEFAULT nextval('user_bottle_user_id_seq'::regclass);


--
-- Name: user_bottle bottle_id; Type: DEFAULT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY user_bottle ALTER COLUMN bottle_id SET DEFAULT nextval('user_bottle_bottle_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: bottle; Type: TABLE DATA; Schema: public; Owner: rahulsurabhi
--

COPY bottle (id, name, capacity) FROM stdin;
\.


--
-- Name: bottle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rahulsurabhi
--

SELECT pg_catalog.setval('bottle_id_seq', 1, false);


--
-- Data for Name: date_bottle; Type: TABLE DATA; Schema: public; Owner: rahulsurabhi
--

COPY date_bottle ("timestamp", bottle_id, consumption) FROM stdin;
\.


--
-- Name: date_bottle_bottle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rahulsurabhi
--

SELECT pg_catalog.setval('date_bottle_bottle_id_seq', 1, false);


--
-- Data for Name: user_bottle; Type: TABLE DATA; Schema: public; Owner: rahulsurabhi
--

COPY user_bottle (user_id, bottle_id) FROM stdin;
\.


--
-- Name: user_bottle_bottle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rahulsurabhi
--

SELECT pg_catalog.setval('user_bottle_bottle_id_seq', 1, false);


--
-- Name: user_bottle_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rahulsurabhi
--

SELECT pg_catalog.setval('user_bottle_user_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: rahulsurabhi
--

COPY users (id, name, address) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rahulsurabhi
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: bottle bottle_name_key; Type: CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY bottle
    ADD CONSTRAINT bottle_name_key UNIQUE (name);


--
-- Name: bottle bottle_pkey; Type: CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY bottle
    ADD CONSTRAINT bottle_pkey PRIMARY KEY (id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: date_bottle date_bottle_bottle_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY date_bottle
    ADD CONSTRAINT date_bottle_bottle_id_fkey FOREIGN KEY (bottle_id) REFERENCES bottle(id);


--
-- Name: user_bottle user_bottle_bottle_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY user_bottle
    ADD CONSTRAINT user_bottle_bottle_id_fkey FOREIGN KEY (bottle_id) REFERENCES bottle(id);


--
-- Name: user_bottle user_bottle_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rahulsurabhi
--

ALTER TABLE ONLY user_bottle
    ADD CONSTRAINT user_bottle_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- PostgreSQL database dump complete
--

