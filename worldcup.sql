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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 59, 60, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 61, 62, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 60, 62, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 59, 61, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 60, 63, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 62, 64, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 61, 65, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 59, 66, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 62, 67, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 64, 68, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 61, 69, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 65, 70, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 60, 71, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 63, 72, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 66, 73, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 59, 74, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 75, 74, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 76, 65, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 74, 76, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 75, 65, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 76, 77, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 74, 61, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 65, 67, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 75, 59, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 65, 78, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 67, 66, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 59, 79, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 75, 80, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 76, 70, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 77, 81, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 74, 68, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 61, 82, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (59, 'France');
INSERT INTO public.teams VALUES (60, 'Croatia');
INSERT INTO public.teams VALUES (61, 'Belgium');
INSERT INTO public.teams VALUES (62, 'England');
INSERT INTO public.teams VALUES (63, 'Russia');
INSERT INTO public.teams VALUES (64, 'Sweden');
INSERT INTO public.teams VALUES (65, 'Brazil');
INSERT INTO public.teams VALUES (66, 'Uruguay');
INSERT INTO public.teams VALUES (67, 'Colombia');
INSERT INTO public.teams VALUES (68, 'Switzerland');
INSERT INTO public.teams VALUES (69, 'Japan');
INSERT INTO public.teams VALUES (70, 'Mexico');
INSERT INTO public.teams VALUES (71, 'Denmark');
INSERT INTO public.teams VALUES (72, 'Spain');
INSERT INTO public.teams VALUES (73, 'Portugal');
INSERT INTO public.teams VALUES (74, 'Argentina');
INSERT INTO public.teams VALUES (75, 'Germany');
INSERT INTO public.teams VALUES (76, 'Netherlands');
INSERT INTO public.teams VALUES (77, 'Costa Rica');
INSERT INTO public.teams VALUES (78, 'Chile');
INSERT INTO public.teams VALUES (79, 'Nigeria');
INSERT INTO public.teams VALUES (80, 'Algeria');
INSERT INTO public.teams VALUES (81, 'Greece');
INSERT INTO public.teams VALUES (82, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 82, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

