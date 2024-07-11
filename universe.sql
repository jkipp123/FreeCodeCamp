--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    star_id integer NOT NULL,
    "real" boolean,
    column5 character varying(1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    cold text,
    cool_lvl integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: one_off; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.one_off (
    one_off_id integer NOT NULL,
    column2 text NOT NULL,
    column3 text NOT NULL,
    name character varying(1)
);


ALTER TABLE public.one_off OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    star_id integer NOT NULL,
    numberm numeric,
    hasm boolean,
    cool_lvl integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    galaxy_id integer NOT NULL,
    column4 character varying(1),
    column5 character varying(1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Marvel', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'MilkyWay1', 1, true, NULL);
INSERT INTO public.galaxy VALUES (3, 'What', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Who', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'When', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'How', 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', 3, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon4', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon5', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon6', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon7', 3, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon8', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon9', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon10', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon11', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon12', 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon13', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon14', 3, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon15', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon16', 3, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon17', 3, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon18', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon19', 3, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon20', 3, NULL, NULL);


--
-- Data for Name: one_off; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.one_off VALUES (1, 'Yes', 'No', NULL);
INSERT INTO public.one_off VALUES (2, 'Yes', 'No', NULL);
INSERT INTO public.one_off VALUES (3, 'Yes', 'No', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Marvel-Earth', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Asgard', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Ego', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Titan', 2, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Marvel-Sun', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Big', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Small', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'West', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'East', 1, NULL, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: one_off one_off_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.one_off
    ADD CONSTRAINT one_off_pkey PRIMARY KEY (one_off_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: one_off unique_column1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.one_off
    ADD CONSTRAINT unique_column1 UNIQUE (one_off_id);


--
-- Name: moon unique_mname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_mname UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_pname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_pname UNIQUE (name);


--
-- Name: star unique_sname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_sname UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--