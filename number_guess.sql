--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 12, 4);
INSERT INTO public.games VALUES (2, 574, 5);
INSERT INTO public.games VALUES (3, 450, 5);
INSERT INTO public.games VALUES (4, 577, 6);
INSERT INTO public.games VALUES (5, 416, 6);
INSERT INTO public.games VALUES (6, 600, 5);
INSERT INTO public.games VALUES (7, 275, 5);
INSERT INTO public.games VALUES (8, 222, 5);
INSERT INTO public.games VALUES (9, 63, 7);
INSERT INTO public.games VALUES (10, 312, 7);
INSERT INTO public.games VALUES (11, 41, 8);
INSERT INTO public.games VALUES (12, 56, 8);
INSERT INTO public.games VALUES (13, 793, 7);
INSERT INTO public.games VALUES (14, 94, 7);
INSERT INTO public.games VALUES (15, 468, 7);
INSERT INTO public.games VALUES (16, 606, 9);
INSERT INTO public.games VALUES (17, 258, 9);
INSERT INTO public.games VALUES (18, 16, 10);
INSERT INTO public.games VALUES (19, 632, 10);
INSERT INTO public.games VALUES (20, 115, 9);
INSERT INTO public.games VALUES (21, 358, 9);
INSERT INTO public.games VALUES (22, 554, 9);
INSERT INTO public.games VALUES (23, 232, 11);
INSERT INTO public.games VALUES (24, 214, 11);
INSERT INTO public.games VALUES (25, 235, 12);
INSERT INTO public.games VALUES (26, 81, 12);
INSERT INTO public.games VALUES (27, 863, 11);
INSERT INTO public.games VALUES (28, 496, 11);
INSERT INTO public.games VALUES (29, 788, 11);
INSERT INTO public.games VALUES (30, 63, 13);
INSERT INTO public.games VALUES (31, 797, 13);
INSERT INTO public.games VALUES (32, 127, 14);
INSERT INTO public.games VALUES (33, 490, 14);
INSERT INTO public.games VALUES (34, 117, 13);
INSERT INTO public.games VALUES (35, 241, 13);
INSERT INTO public.games VALUES (36, 370, 13);
INSERT INTO public.games VALUES (37, 1000, 15);
INSERT INTO public.games VALUES (38, 397, 15);
INSERT INTO public.games VALUES (39, 471, 16);
INSERT INTO public.games VALUES (40, 577, 16);
INSERT INTO public.games VALUES (41, 595, 15);
INSERT INTO public.games VALUES (42, 467, 15);
INSERT INTO public.games VALUES (43, 795, 15);
INSERT INTO public.games VALUES (44, 247, 17);
INSERT INTO public.games VALUES (45, 834, 17);
INSERT INTO public.games VALUES (46, 101, 18);
INSERT INTO public.games VALUES (47, 915, 18);
INSERT INTO public.games VALUES (48, 486, 17);
INSERT INTO public.games VALUES (49, 88, 17);
INSERT INTO public.games VALUES (50, 296, 17);
INSERT INTO public.games VALUES (51, 11, 1);
INSERT INTO public.games VALUES (52, 10, 1);
INSERT INTO public.games VALUES (53, 11, 19);
INSERT INTO public.games VALUES (54, 842, 20);
INSERT INTO public.games VALUES (55, 793, 20);
INSERT INTO public.games VALUES (56, 530, 21);
INSERT INTO public.games VALUES (57, 211, 21);
INSERT INTO public.games VALUES (58, 153, 20);
INSERT INTO public.games VALUES (59, 658, 20);
INSERT INTO public.games VALUES (60, 207, 20);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Juan');
INSERT INTO public.users VALUES (2, 'user_1673196990559');
INSERT INTO public.users VALUES (3, 'user_1673196990558');
INSERT INTO public.users VALUES (4, 'Paco');
INSERT INTO public.users VALUES (5, 'user_1673197723916');
INSERT INTO public.users VALUES (6, 'user_1673197723915');
INSERT INTO public.users VALUES (7, 'user_1673197780905');
INSERT INTO public.users VALUES (8, 'user_1673197780904');
INSERT INTO public.users VALUES (9, 'user_1673197802131');
INSERT INTO public.users VALUES (10, 'user_1673197802130');
INSERT INTO public.users VALUES (11, 'user_1673197926036');
INSERT INTO public.users VALUES (12, 'user_1673197926035');
INSERT INTO public.users VALUES (13, 'user_1673197953488');
INSERT INTO public.users VALUES (14, 'user_1673197953487');
INSERT INTO public.users VALUES (15, 'user_1673198013162');
INSERT INTO public.users VALUES (16, 'user_1673198013161');
INSERT INTO public.users VALUES (17, 'user_1673198047452');
INSERT INTO public.users VALUES (18, 'user_1673198047451');
INSERT INTO public.users VALUES (19, 'Palo');
INSERT INTO public.users VALUES (20, 'user_1673198246932');
INSERT INTO public.users VALUES (21, 'user_1673198246931');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 60, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

