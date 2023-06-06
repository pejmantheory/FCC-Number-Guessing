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
    username character varying(25) NOT NULL
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

INSERT INTO public.games VALUES (1, 391, 2);
INSERT INTO public.games VALUES (2, 559, 2);
INSERT INTO public.games VALUES (3, 292, 3);
INSERT INTO public.games VALUES (4, 537, 3);
INSERT INTO public.games VALUES (5, 213, 2);
INSERT INTO public.games VALUES (6, 815, 2);
INSERT INTO public.games VALUES (7, 77, 2);
INSERT INTO public.games VALUES (8, 588, 4);
INSERT INTO public.games VALUES (9, 837, 4);
INSERT INTO public.games VALUES (10, 422, 5);
INSERT INTO public.games VALUES (11, 850, 5);
INSERT INTO public.games VALUES (12, 290, 4);
INSERT INTO public.games VALUES (13, 235, 4);
INSERT INTO public.games VALUES (14, 791, 4);
INSERT INTO public.games VALUES (15, 954, 6);
INSERT INTO public.games VALUES (16, 563, 6);
INSERT INTO public.games VALUES (17, 298, 7);
INSERT INTO public.games VALUES (18, 269, 7);
INSERT INTO public.games VALUES (19, 386, 6);
INSERT INTO public.games VALUES (20, 603, 6);
INSERT INTO public.games VALUES (21, 329, 6);
INSERT INTO public.games VALUES (22, 602, 8);
INSERT INTO public.games VALUES (23, 955, 8);
INSERT INTO public.games VALUES (24, 736, 9);
INSERT INTO public.games VALUES (25, 794, 9);
INSERT INTO public.games VALUES (26, 223, 8);
INSERT INTO public.games VALUES (27, 606, 8);
INSERT INTO public.games VALUES (28, 853, 8);
INSERT INTO public.games VALUES (29, 78, 10);
INSERT INTO public.games VALUES (30, 54, 10);
INSERT INTO public.games VALUES (31, 183, 11);
INSERT INTO public.games VALUES (32, 735, 11);
INSERT INTO public.games VALUES (33, 926, 10);
INSERT INTO public.games VALUES (34, 217, 10);
INSERT INTO public.games VALUES (35, 836, 10);
INSERT INTO public.games VALUES (36, 1, 12);
INSERT INTO public.games VALUES (37, 687, 12);
INSERT INTO public.games VALUES (38, 154, 13);
INSERT INTO public.games VALUES (39, 112, 13);
INSERT INTO public.games VALUES (40, 480, 12);
INSERT INTO public.games VALUES (41, 645, 12);
INSERT INTO public.games VALUES (42, 235, 12);
INSERT INTO public.games VALUES (43, 1, 14);
INSERT INTO public.games VALUES (44, 110, 14);
INSERT INTO public.games VALUES (45, 91, 15);
INSERT INTO public.games VALUES (46, 438, 15);
INSERT INTO public.games VALUES (47, 256, 14);
INSERT INTO public.games VALUES (48, 368, 14);
INSERT INTO public.games VALUES (49, 288, 14);
INSERT INTO public.games VALUES (50, 186, 16);
INSERT INTO public.games VALUES (51, 317, 16);
INSERT INTO public.games VALUES (52, 136, 17);
INSERT INTO public.games VALUES (53, 696, 17);
INSERT INTO public.games VALUES (54, 674, 16);
INSERT INTO public.games VALUES (55, 254, 16);
INSERT INTO public.games VALUES (56, 442, 16);
INSERT INTO public.games VALUES (57, 535, 18);
INSERT INTO public.games VALUES (58, 30, 18);
INSERT INTO public.games VALUES (59, 960, 19);
INSERT INTO public.games VALUES (60, 832, 19);
INSERT INTO public.games VALUES (61, 294, 18);
INSERT INTO public.games VALUES (62, 487, 18);
INSERT INTO public.games VALUES (63, 409, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Pejman');
INSERT INTO public.users VALUES (2, 'user_1686052539548');
INSERT INTO public.users VALUES (3, 'user_1686052539547');
INSERT INTO public.users VALUES (4, 'user_1686052638242');
INSERT INTO public.users VALUES (5, 'user_1686052638241');
INSERT INTO public.users VALUES (6, 'user_1686052700662');
INSERT INTO public.users VALUES (7, 'user_1686052700661');
INSERT INTO public.users VALUES (8, 'user_1686052763570');
INSERT INTO public.users VALUES (9, 'user_1686052763569');
INSERT INTO public.users VALUES (10, 'user_1686052783495');
INSERT INTO public.users VALUES (11, 'user_1686052783494');
INSERT INTO public.users VALUES (12, 'user_1686052864258');
INSERT INTO public.users VALUES (13, 'user_1686052864257');
INSERT INTO public.users VALUES (14, 'user_1686052874415');
INSERT INTO public.users VALUES (15, 'user_1686052874414');
INSERT INTO public.users VALUES (16, 'user_1686052885998');
INSERT INTO public.users VALUES (17, 'user_1686052885997');
INSERT INTO public.users VALUES (18, 'user_1686052891460');
INSERT INTO public.users VALUES (19, 'user_1686052891459');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

