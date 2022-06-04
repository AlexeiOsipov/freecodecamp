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
    name character varying(100) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_types_id integer NOT NULL,
    description text
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(100) NOT NULL,
    galaxy_types_id integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    distance_from_planet integer,
    has_life boolean
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
    name character varying(100) NOT NULL,
    star_id integer,
    distance_from_star integer,
    has_life boolean
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
    name character varying(100) NOT NULL,
    galaxy_id integer,
    diameter integer,
    brightless real
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Ursa Major B', 5000, 1, 'It is classified as a Fanaroff-Riley Tipe II radio sourse, which means that the luminosity increases with distance from the core.');
INSERT INTO public.galaxy VALUES (2, 'Maffei 1', 4000, 1, 'Massive elliptical galaxy in costellation Cassiopeia.');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 6000, 2, 'Barried spiral galaxy whith diameter of about 220000 ly approximately 2.5 million light-years.');
INSERT INTO public.galaxy VALUES (4, 'Pinnwheel Galaxy', 4500, 2, 'Face-on spirial galaxy 21 millions light-years away from Earth in constellation Ursa Major II');
INSERT INTO public.galaxy VALUES (5, 'Large Maggelanic Cloud', 8000, 3, 'Nubecula Major is a satellite galaxy of Milky Way.');
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 7000, 3, 'Nubbecula Minor is dwarf galaxy near the Milky Way.');


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('Elliptical', 1, 'Type of galaxy with approximately ellipsodal shape and a smooth, nearly featureless image.');
INSERT INTO public.galaxy_types VALUES ('Spiral', 2, 'Spiral galaxies are named by their spiral structures that extend from the center into galactic disc.');
INSERT INTO public.galaxy_types VALUES ('Irregular', 3, 'Does not have a distinct regular shape.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Yavin 1', 11, 1, false);
INSERT INTO public.moon VALUES (2, 'Yavin 2', 11, 2, false);
INSERT INTO public.moon VALUES (3, 'Yavin 3', 11, 3, true);
INSERT INTO public.moon VALUES (4, 'Yavin 4', 11, 4, true);
INSERT INTO public.moon VALUES (5, 'Yavin 7', 11, 7, true);
INSERT INTO public.moon VALUES (6, 'Yavin 8', 11, 8, true);
INSERT INTO public.moon VALUES (7, 'Yavin 13', 11, 13, true);
INSERT INTO public.moon VALUES (8, 'Yavin 22', 11, 14, false);
INSERT INTO public.moon VALUES (9, 'Centax-1', 12, 1, false);
INSERT INTO public.moon VALUES (10, 'Centax-2', 12, 2, false);
INSERT INTO public.moon VALUES (11, 'Centax-3', 12, 3, true);
INSERT INTO public.moon VALUES (12, 'Hesperidium', 12, 3, false);
INSERT INTO public.moon VALUES (13, 'Correllian nearest moon', 13, 1, false);
INSERT INTO public.moon VALUES (14, 'Gus', 13, 2, false);
INSERT INTO public.moon VALUES (15, 'Gus Talon', 13, 3, true);
INSERT INTO public.moon VALUES (16, 'Garrison Moon', 18, 1, false);
INSERT INTO public.moon VALUES (17, 'Tuvvet', 24, 1, false);
INSERT INTO public.moon VALUES (18, 'Lodos', 31, 1, false);
INSERT INTO public.moon VALUES (19, 'Sharene', 31, 1, false);
INSERT INTO public.moon VALUES (20, 'Akanala', 32, 1, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Garnib', 1, 1, true);
INSERT INTO public.planet VALUES (2, 'Hultomo', 1, 2, false);
INSERT INTO public.planet VALUES (3, 'Mastala', 1, 3, false);
INSERT INTO public.planet VALUES (4, 'Coomputu', 1, 4, false);
INSERT INTO public.planet VALUES (5, 'Clakdor 1', 2, 1, false);
INSERT INTO public.planet VALUES (6, 'Clakdor 2', 2, 2, false);
INSERT INTO public.planet VALUES (7, 'Clakdor 3', 2, 3, true);
INSERT INTO public.planet VALUES (8, 'Clakdor 4', 2, 4, true);
INSERT INTO public.planet VALUES (9, 'Clakdor 5', 2, 5, false);
INSERT INTO public.planet VALUES (10, 'Clakdor 7', 2, 7, true);
INSERT INTO public.planet VALUES (11, 'Yavin Prime', 3, 1, false);
INSERT INTO public.planet VALUES (12, 'Corcusant', 4, 1, true);
INSERT INTO public.planet VALUES (13, 'Corellia', 5, 1, true);
INSERT INTO public.planet VALUES (14, 'Selonia', 5, 2, true);
INSERT INTO public.planet VALUES (15, 'Talus', 5, 3, true);
INSERT INTO public.planet VALUES (16, 'Tralus', 5, 4, true);
INSERT INTO public.planet VALUES (17, 'Senna', 6, 1, false);
INSERT INTO public.planet VALUES (18, 'Kessel', 6, 2, true);
INSERT INTO public.planet VALUES (19, 'Karedda', 6, 3, false);
INSERT INTO public.planet VALUES (20, 'Elpoor', 7, 1, false);
INSERT INTO public.planet VALUES (21, 'Ropagi 2', 7, 2, true);
INSERT INTO public.planet VALUES (22, 'Seltaya Minor', 7, 3, false);
INSERT INTO public.planet VALUES (23, 'Gorta', 8, 1, false);
INSERT INTO public.planet VALUES (24, 'Gorsh', 8, 2, false);
INSERT INTO public.planet VALUES (25, 'Gorlan', 8, 3, false);
INSERT INTO public.planet VALUES (26, 'Gartana', 8, 4, false);
INSERT INTO public.planet VALUES (27, 'Garsala', 8, 5, false);
INSERT INTO public.planet VALUES (28, 'Gortami', 8, 6, false);
INSERT INTO public.planet VALUES (29, 'Trinka', 9, 1, false);
INSERT INTO public.planet VALUES (30, 'Acatal', 9, 2, false);
INSERT INTO public.planet VALUES (31, 'Elrood', 9, 3, true);
INSERT INTO public.planet VALUES (32, 'Akana', 9, 4, true);
INSERT INTO public.planet VALUES (33, 'Thrang', 9, 5, false);
INSERT INTO public.planet VALUES (34, 'Tufar', 9, 6, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Garnib', 1, 440, 40);
INSERT INTO public.star VALUES (2, 'Colu', 2, 500, 30);
INSERT INTO public.star VALUES (3, 'Yavin', 3, 10000, 10);
INSERT INTO public.star VALUES (4, 'Coruscant Prime', 4, 400, 60);
INSERT INTO public.star VALUES (5, 'Corell', 5, 60, 35);
INSERT INTO public.star VALUES (6, 'Kessa', 6, 70, 65);
INSERT INTO public.star VALUES (7, 'Ropagi', 1, 410, 60);
INSERT INTO public.star VALUES (8, 'Gorsh', 2, 100, 55);
INSERT INTO public.star VALUES (9, 'Elrad', 3, 200, 80);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 34, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: galaxy_types name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

