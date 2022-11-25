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
    name character varying(50) NOT NULL,
    size integer NOT NULL,
    random1 integer,
    random2 integer
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
    planet_id integer,
    explored boolean NOT NULL,
    random1 integer,
    visible boolean
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
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    name character varying(50) NOT NULL,
    degree character varying(16) NOT NULL
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_people_id_seq OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_people_id_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    history text,
    orbitnum integer NOT NULL,
    size_km integer,
    psi numeric(8,2)
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
    galaxy_id integer,
    random1 integer NOT NULL,
    random2 integer
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
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_people_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'G01', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'G02', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'G03', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'G04', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'G05', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'G06', 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M01', 1, false, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'M02', 2, true, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'M03', 3, false, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'M04', 4, true, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'M05', 5, false, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'M06', 1, false, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'M07', 2, true, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'M08', 3, false, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'M09', 4, true, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'M10', 5, false, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'M11', 1, false, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'M12', 2, true, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'M13', 3, false, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'M14', 4, true, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'M15', 5, false, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'M16', 1, false, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'M17', 2, true, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'M18', 3, false, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'M19', 4, true, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'M20', 5, false, NULL, NULL);


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, 'PERSON01', 'PHD');
INSERT INTO public.people VALUES (2, 'PERSON02', 'PHD');
INSERT INTO public.people VALUES (3, 'PERSON03', 'PHD');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P01', 1, 'long', 3, 10000, 14.90);
INSERT INTO public.planet VALUES (2, 'P02', 1, 'long', 4, 20000, 14.10);
INSERT INTO public.planet VALUES (3, 'P03', 1, 'long', 5, 30000, 14.40);
INSERT INTO public.planet VALUES (4, 'P04', 2, 'long', 3, 10000, 14.90);
INSERT INTO public.planet VALUES (5, 'P05', 2, 'long', 4, 20000, 14.10);
INSERT INTO public.planet VALUES (6, 'P06', 2, 'long', 5, 30000, 14.40);
INSERT INTO public.planet VALUES (7, 'P07', 3, 'long', 3, 10000, 14.90);
INSERT INTO public.planet VALUES (8, 'P08', 3, 'long', 4, 20000, 14.10);
INSERT INTO public.planet VALUES (9, 'P09', 3, 'long', 5, 30000, 14.40);
INSERT INTO public.planet VALUES (10, 'P10', 4, 'long', 3, 10000, 14.90);
INSERT INTO public.planet VALUES (11, 'P11', 4, 'long', 4, 20000, 14.10);
INSERT INTO public.planet VALUES (12, 'P12', 4, 'long', 5, 30000, 14.40);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S01', 1, 0, NULL);
INSERT INTO public.star VALUES (2, 'S02', 2, 0, NULL);
INSERT INTO public.star VALUES (3, 'S03', 3, 0, NULL);
INSERT INTO public.star VALUES (4, 'S04', 4, 0, NULL);
INSERT INTO public.star VALUES (5, 'S05', 5, 0, NULL);
INSERT INTO public.star VALUES (6, 'S06', 6, 0, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: people_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_people_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


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

