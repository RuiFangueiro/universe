/home/codeally/project/universe.sql
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
    name character varying(30) NOT NULL,
    size_milion_of_ly integer,
    bilions_of_stars integer,
    discoverer text,
    big boolean,
    signs_of_life boolean,
    times_milky_size numeric
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
    name character varying(30) NOT NULL,
    planet_id integer,
    size_in_km numeric,
    revolution_in_days numeric
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
-- Name: my_space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_space (
    my_galaxy character varying(30) NOT NULL,
    my_star character varying(30) NOT NULL,
    my_planet character varying(30) NOT NULL,
    my_moon character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    my_space_id integer NOT NULL
);


ALTER TABLE public.my_space OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id numeric,
    diametre_in_km numeric,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    brightness numeric,
    size_to_sun integer
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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 100, 'Edwin Hubble', false, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220, 1000, 'Abd al-Rahman', false, false, 2.2);
INSERT INTO public.galaxy VALUES (3, 'IC 1101', 5500, 100000, 'William Herschel', true, false, 55);
INSERT INTO public.galaxy VALUES (4, 'ESO 248-6', 1764, NULL, NULL, true, false, 17.31);
INSERT INTO public.galaxy VALUES (5, 'ESO 383-76', 1731, NULL, NULL, true, false, 17.64);
INSERT INTO public.galaxy VALUES (11, 'Tadpole', 280, NULL, NULL, false, false, 2.8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymed', 5, 5268, 7.15);
INSERT INTO public.moon VALUES (2, 'Titan', 6, 5150, 15.95);
INSERT INTO public.moon VALUES (3, 'Callisto', 5, 4820, 16.69);
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, 1.77);
INSERT INTO public.moon VALUES (5, 'Moon', 3, 3474, 27.32);
INSERT INTO public.moon VALUES (6, 'Europa', 5, 3122, 3.55);
INSERT INTO public.moon VALUES (7, 'Triton', 8, 2707, -5.87);
INSERT INTO public.moon VALUES (8, 'Titania', 7, 1578, 8.70);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 1527, 4.52);
INSERT INTO public.moon VALUES (10, 'Oberon', 7, 1523, 13.46);
INSERT INTO public.moon VALUES (11, 'Iapetus', 6, 1471, 79.32);
INSERT INTO public.moon VALUES (12, 'Ariel', 7, 1158, 2.52);
INSERT INTO public.moon VALUES (13, 'Umbriel', 7, 1169, 4.14);
INSERT INTO public.moon VALUES (14, 'Dione', 6, 1123, 2.74);
INSERT INTO public.moon VALUES (15, 'Tethys', 6, 1062, 1.88);
INSERT INTO public.moon VALUES (16, 'Miranda', 7, 472, 1.43);
INSERT INTO public.moon VALUES (17, 'Nereid', 8, NULL, -360);
INSERT INTO public.moon VALUES (18, 'Proteus', 8, NULL, -1.12);
INSERT INTO public.moon VALUES (19, 'Hyperion', 6, NULL, -21.27);
INSERT INTO public.moon VALUES (20, 'Charon', 6, NULL, 6.38);


--
-- Data for Name: my_space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.my_space VALUES ('Milky Way', 'Sun', 'Earth', 'Moon', 'Rui', 1);
INSERT INTO public.my_space VALUES ('Milky Way', 'Sun', 'Jupiter', '0307', 'João', 2);
INSERT INTO public.my_space VALUES ('Zork', 'Leão', 'Marte', '4131', 'Pedro', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4480, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 12104, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 12742, true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 6779, false, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 139822, false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 116460, false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 50724, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 49244, false, 7);
INSERT INTO public.planet VALUES (9, 'Kepler-10b', 1, 18000, false, 7);
INSERT INTO public.planet VALUES (10, 'Kepler-20b', 1, 16630, false, 7);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 1, 24344, false, 7);
INSERT INTO public.planet VALUES (12, 'Kepler-12b', 1, NULL, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 1, 1.86, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 3, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 0.6, NULL);
INSERT INTO public.star VALUES (4, 'Antares A', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Mira A', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Unurgunite', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Sun', 1, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: my_space my_space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_space
    ADD CONSTRAINT my_space_name_key UNIQUE (name);


--
-- Name: my_space my_space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_space
    ADD CONSTRAINT my_space_pkey PRIMARY KEY (my_space_id);


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

