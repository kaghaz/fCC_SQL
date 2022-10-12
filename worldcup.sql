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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (93, 2018, 'Final', 499, 500, 4, 2);
INSERT INTO public.games VALUES (94, 2018, 'Third Place', 501, 502, 2, 0);
INSERT INTO public.games VALUES (95, 2018, 'Semi-Final', 500, 502, 2, 1);
INSERT INTO public.games VALUES (96, 2018, 'Semi-Final', 499, 501, 1, 0);
INSERT INTO public.games VALUES (97, 2018, 'Quarter-Final', 500, 503, 3, 2);
INSERT INTO public.games VALUES (98, 2018, 'Quarter-Final', 502, 504, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Quarter-Final', 501, 505, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Quarter-Final', 499, 506, 2, 0);
INSERT INTO public.games VALUES (101, 2018, 'Eighth-Final', 502, 507, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Eighth-Final', 504, 508, 1, 0);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 501, 509, 3, 2);
INSERT INTO public.games VALUES (104, 2018, 'Eighth-Final', 505, 510, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 500, 511, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 503, 512, 2, 1);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 506, 513, 2, 1);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 499, 514, 4, 3);
INSERT INTO public.games VALUES (109, 2014, 'Final', 515, 514, 1, 0);
INSERT INTO public.games VALUES (110, 2014, 'Third Place', 516, 505, 3, 0);
INSERT INTO public.games VALUES (111, 2014, 'Semi-Final', 514, 516, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Semi-Final', 515, 505, 7, 1);
INSERT INTO public.games VALUES (113, 2014, 'Quarter-Final', 516, 517, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Quarter-Final', 514, 501, 1, 0);
INSERT INTO public.games VALUES (115, 2014, 'Quarter-Final', 505, 507, 2, 1);
INSERT INTO public.games VALUES (116, 2014, 'Quarter-Final', 515, 499, 1, 0);
INSERT INTO public.games VALUES (117, 2014, 'Eighth-Final', 505, 518, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Eighth-Final', 507, 506, 2, 0);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 499, 519, 2, 0);
INSERT INTO public.games VALUES (120, 2014, 'Eighth-Final', 515, 520, 2, 1);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 516, 510, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 517, 521, 2, 1);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 514, 508, 1, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 501, 522, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (499, 'France');
INSERT INTO public.teams VALUES (500, 'Croatia');
INSERT INTO public.teams VALUES (501, 'Belgium');
INSERT INTO public.teams VALUES (502, 'England');
INSERT INTO public.teams VALUES (503, 'Russia');
INSERT INTO public.teams VALUES (504, 'Sweden');
INSERT INTO public.teams VALUES (505, 'Brazil');
INSERT INTO public.teams VALUES (506, 'Uruguay');
INSERT INTO public.teams VALUES (507, 'Colombia');
INSERT INTO public.teams VALUES (508, 'Switzerland');
INSERT INTO public.teams VALUES (509, 'Japan');
INSERT INTO public.teams VALUES (510, 'Mexico');
INSERT INTO public.teams VALUES (511, 'Denmark');
INSERT INTO public.teams VALUES (512, 'Spain');
INSERT INTO public.teams VALUES (513, 'Portugal');
INSERT INTO public.teams VALUES (514, 'Argentina');
INSERT INTO public.teams VALUES (515, 'Germany');
INSERT INTO public.teams VALUES (516, 'Netherlands');
INSERT INTO public.teams VALUES (517, 'Costa Rica');
INSERT INTO public.teams VALUES (518, 'Chile');
INSERT INTO public.teams VALUES (519, 'Nigeria');
INSERT INTO public.teams VALUES (520, 'Algeria');
INSERT INTO public.teams VALUES (521, 'Greece');
INSERT INTO public.teams VALUES (522, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 124, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 522, true);


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
-- Name: games games_opponent_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey1 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey10; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey10 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey11; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey11 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey12; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey12 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey13; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey13 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey14; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey14 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey15; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey15 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey16; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey16 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey17; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey17 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey18; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey18 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey19; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey19 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey2 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey20; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey20 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey21; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey21 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey22; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey22 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey23; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey23 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey24; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey24 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey25; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey25 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey26; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey26 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey27; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey27 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey28; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey28 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey29; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey29 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey3 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey30; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey30 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey31; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey31 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey4 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey5; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey5 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey6; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey6 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey7; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey7 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey8; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey8 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey9; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey9 FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey1 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey10; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey10 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey11; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey11 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey12; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey12 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey13; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey13 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey14; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey14 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey15; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey15 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey16; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey16 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey17; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey17 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey18; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey18 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey19; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey19 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey2 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey20; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey20 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey21; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey21 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey22; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey22 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey23; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey23 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey24; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey24 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey25; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey25 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey26; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey26 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey27; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey27 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey28; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey28 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey29; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey29 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey3 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey30; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey30 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey31; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey31 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey4 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey5; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey5 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey6; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey6 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey7; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey7 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey8; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey8 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey9; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey9 FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

