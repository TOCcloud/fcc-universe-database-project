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
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying(50) NOT NULL,
    celestial_age_in_millions_of_years integer NOT NULL,
    size_of_celestial numeric(20,9),
    number_of_celestial_in_existence integer,
    does_the_celestial_still_exist boolean,
    is_the_celestial_liveable boolean,
    other_name_of_celestial text
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_age_in_millions_of_years integer NOT NULL,
    size_of_galaxy numeric(20,9),
    number_of_planet_under_galaxy integer,
    does_the_galaxy_still_exist boolean,
    is_the_galaxy_liveable boolean,
    other_name_of_galaxy text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    moon_age_in_millions_of_years integer NOT NULL,
    size_of_moon numeric(20,9),
    number_of_moon_in_existence integer,
    does_the_moon_still_exist boolean,
    is_the_moon_liveable boolean,
    other_name_of_moon text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_age_in_millions_of_years integer NOT NULL,
    size_of_planet numeric(20,9),
    number_of_moons_under_plant integer,
    does_the_planet_still_exist boolean,
    is_the_planet_liveable boolean,
    other_name_of_planet text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_age_in_millions_of_years integer NOT NULL,
    size_of_star numeric(20,9),
    number_of_planet_under_star integer,
    does_the_star_still_exist boolean,
    is_the_star_liveable boolean,
    other_name_of_star text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'Black Hole', 13000, 1000000.000000000, 100000000, true, false, 'Singularity');
INSERT INTO public.celestial VALUES (2, 'Nebula', 5000, 3000000.000000000, 5000, true, false, 'Stellar Nursery');
INSERT INTO public.celestial VALUES (3, 'Comet', 4600, 10.000000000, 1000000, true, false, 'Ice Rock');
INSERT INTO public.celestial VALUES (4, 'Asteroid', 4600, 1000.000000000, 10000000, true, false, 'Minor Planet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 105700.000000000, 300000000, true, false, 'The River of Stars');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10100, 220000.000000000, 1000000000, true, false, 'M31');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 13000, 50000.000000000, 80000000, true, false, 'Messier 104');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 10000, 60000.000000000, 200000000, true, false, 'M51');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 12000, 60000.000000000, 40000000, true, false, 'M33');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 11000, 150000.000000000, 90000000, true, false, 'Ring Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 3474.000000000, 1, true, false, 'Luna', 14);
INSERT INTO public.moon VALUES (2, 'Phobos', 4600, 22.000000000, 1, true, false, 'Mars I', 15);
INSERT INTO public.moon VALUES (3, 'Deimos', 4600, 12.000000000, 1, true, false, 'Mars II', 15);
INSERT INTO public.moon VALUES (4, 'Io', 4600, 3643.000000000, 1, true, false, 'Jupiter I', 18);
INSERT INTO public.moon VALUES (5, 'Europa', 4600, 3122.000000000, 1, true, false, 'Jupiter II', 18);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4600, 5268.000000000, 1, true, false, 'Jupiter III', 18);
INSERT INTO public.moon VALUES (7, 'Callisto', 4600, 4821.000000000, 1, true, false, 'Jupiter IV', 18);
INSERT INTO public.moon VALUES (8, 'Titan', 4600, 5150.000000000, 1, true, false, 'Saturn VI', 19);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4600, 504.000000000, 1, true, false, 'Saturn II', 19);
INSERT INTO public.moon VALUES (10, 'Mimas', 4600, 396.000000000, 1, true, false, 'Saturn I', 19);
INSERT INTO public.moon VALUES (11, 'Triton', 4600, 2707.000000000, 1, true, false, 'Neptune I', 21);
INSERT INTO public.moon VALUES (12, 'Charon', 4600, 1212.000000000, 1, true, false, 'Pluto I', 22);
INSERT INTO public.moon VALUES (13, 'Oberon', 4600, 1523.000000000, 1, true, false, 'Uranus IV', 20);
INSERT INTO public.moon VALUES (14, 'Titania', 4600, 1577.000000000, 1, true, false, 'Uranus III', 20);
INSERT INTO public.moon VALUES (15, 'Ariel', 4600, 1157.000000000, 1, true, false, 'Uranus I', 20);
INSERT INTO public.moon VALUES (16, 'Umbriel', 4600, 1169.000000000, 1, true, false, 'Uranus II', 20);
INSERT INTO public.moon VALUES (17, 'Miranda', 4600, 471.000000000, 1, true, false, 'Uranus V', 20);
INSERT INTO public.moon VALUES (18, 'Dione', 4600, 1123.000000000, 1, true, false, 'Saturn IV', 19);
INSERT INTO public.moon VALUES (19, 'Rhea', 4600, 1528.000000000, 1, true, false, 'Saturn V', 19);
INSERT INTO public.moon VALUES (20, 'Iapetus', 4600, 1469.000000000, 1, true, false, 'Saturn VIII', 19);
INSERT INTO public.moon VALUES (21, 'Hyperion', 4600, 270.000000000, 1, true, false, 'Saturn VII', 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (14, 'Earth', 4500, 12742.000000000, 1, true, true, 'Terra', 1);
INSERT INTO public.planet VALUES (15, 'Mars', 4600, 6779.000000000, 2, true, true, 'Red Planet', 1);
INSERT INTO public.planet VALUES (16, 'Venus', 4600, 12104.000000000, 0, true, false, 'Morning Star', 1);
INSERT INTO public.planet VALUES (17, 'Mercury', 4600, 4879.000000000, 0, true, false, 'Swift Planet', 1);
INSERT INTO public.planet VALUES (18, 'Jupiter', 4600, 139820.000000000, 95, true, false, 'Giant Planet', 1);
INSERT INTO public.planet VALUES (19, 'Saturn', 4600, 116460.000000000, 145, true, false, 'Ringed Planet', 1);
INSERT INTO public.planet VALUES (20, 'Uranus', 4600, 50724.000000000, 27, true, false, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (21, 'Neptune', 4600, 49244.000000000, 14, true, false, 'Blue Giant', 1);
INSERT INTO public.planet VALUES (22, 'Pluto', 4600, 2376.000000000, 5, true, false, 'Dwarf Planet', 1);
INSERT INTO public.planet VALUES (23, 'Kepler-452b', 6000, 18000.000000000, 0, true, false, 'Earth 2.0', 2);
INSERT INTO public.planet VALUES (24, 'TOI 700 d', 6000, 14400.000000000, 0, true, false, 'Potentially Habitable', 3);
INSERT INTO public.planet VALUES (25, 'Gliese 581c', 8000, 15400.000000000, 0, true, false, 'Super-Earth', 5);
INSERT INTO public.planet VALUES (26, 'WASP-17b', 3000, 160000.000000000, 0, true, false, 'Hot Jupiter', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1391400.000000000, 8, true, true, 'Sol', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4800, 200000.000000000, 1, true, false, 'Alpha Centauri C', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 300, 2400000.000000000, 2, true, false, 'Dog Star', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 10000, 887000000.000000000, 0, true, false, 'Alpha Orionis', 1);
INSERT INTO public.star VALUES (5, 'Rigel', 8000, 780000000.000000000, 0, true, false, 'Beta Orionis', 1);
INSERT INTO public.star VALUES (6, 'Vega', 455, 2400000.000000000, 2, true, false, 'Alpha Lyrae', 1);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial celestial_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_name_key UNIQUE (name);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

