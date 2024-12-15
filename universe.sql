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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type text NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL
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
    planet_id integer NOT NULL,
    composition text NOT NULL,
    is_spherical boolean NOT NULL
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
    star_id integer NOT NULL,
    planet_type text NOT NULL,
    has_life boolean NOT NULL,
    distance_from_star integer NOT NULL
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
-- Name: space_probe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_probe (
    space_probe_id integer NOT NULL,
    name character varying(50) NOT NULL,
    launched_from character varying(50) NOT NULL,
    mission_duration integer NOT NULL,
    is_operational boolean NOT NULL
);


ALTER TABLE public.space_probe OWNER TO freecodecamp;

--
-- Name: space_probe_space_probe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_probe_space_probe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_probe_space_probe_id_seq OWNER TO freecodecamp;

--
-- Name: space_probe_space_probe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_probe_space_probe_id_seq OWNED BY public.space_probe.space_probe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    star_type text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: space_probe space_probe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe ALTER COLUMN space_probe_id SET DEFAULT nextval('public.space_probe_space_probe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2500000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 29000000, false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 50000000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Rocky', true);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Rocky', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Rocky', false);
INSERT INTO public.moon VALUES (4, 'Europa', 3, 'Icy', true);
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, 'Icy', true);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, 'Icy', true);
INSERT INTO public.moon VALUES (7, 'Io', 3, 'Rocky', true);
INSERT INTO public.moon VALUES (8, 'Titan', 4, 'Icy', true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4, 'Icy', true);
INSERT INTO public.moon VALUES (10, 'Triton', 5, 'Icy', true);
INSERT INTO public.moon VALUES (11, 'Nereid', 5, 'Rocky', false);
INSERT INTO public.moon VALUES (12, 'Charon', 6, 'Icy', true);
INSERT INTO public.moon VALUES (13, 'Nix', 6, 'Rocky', false);
INSERT INTO public.moon VALUES (14, 'Hydra', 6, 'Rocky', false);
INSERT INTO public.moon VALUES (15, 'Kepler-16b A', 7, 'Icy', true);
INSERT INTO public.moon VALUES (16, 'Kepler-16b B', 7, 'Rocky', true);
INSERT INTO public.moon VALUES (17, 'HD 209458 b-1', 8, 'Gas', false);
INSERT INTO public.moon VALUES (18, 'HD 209458 b-2', 8, 'Gas', false);
INSERT INTO public.moon VALUES (19, 'Gliese 581c I', 9, 'Icy', true);
INSERT INTO public.moon VALUES (20, 'Gliese 581c II', 9, 'Rocky', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', false, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 'Gas Giant', false, 5);
INSERT INTO public.planet VALUES (4, 'Proxima b', 2, 'Terrestrial', false, 4);
INSERT INTO public.planet VALUES (5, 'Kepler-452b', 3, 'Super-Earth', false, 6);
INSERT INTO public.planet VALUES (6, 'Venus', 1, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, 'Gas Giant', false, 10);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', false, 30);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 3, 'Super-Earth', false, 22);
INSERT INTO public.planet VALUES (10, 'Kepler-16b', 3, 'Gas Giant', false, 50);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 3, 'Hot Jupiter', false, 153);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 4, 'Super-Earth', true, 20);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1e', 5, 'Terrestrial', true, 39);


--
-- Data for Name: space_probe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_probe VALUES (1, 'Voyager 1', 'Earth', 46, true);
INSERT INTO public.space_probe VALUES (2, 'Voyager 2', 'Earth', 46, true);
INSERT INTO public.space_probe VALUES (3, 'Pioneer 10', 'Earth', 30, false);
INSERT INTO public.space_probe VALUES (4, 'New Horizons', 'Earth', 18, true);
INSERT INTO public.space_probe VALUES (5, 'Cassini', 'Earth', 20, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Yellow Dwarf', 4600, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 'Binary', 5200, true);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 2, 'Red Giant', 8500, true);
INSERT INTO public.star VALUES (4, 'Sirius', 2, 'White Dwarf', 242, true);
INSERT INTO public.star VALUES (5, 'Vega', 3, 'Main Sequence', 455, true);
INSERT INTO public.star VALUES (6, 'Rigel', 3, 'Supergiant', 8400, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: space_probe_space_probe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_probe_space_probe_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: space_probe space_probe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_probe_name_key UNIQUE (name);


--
-- Name: space_probe space_probe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_probe_pkey PRIMARY KEY (space_probe_id);


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

