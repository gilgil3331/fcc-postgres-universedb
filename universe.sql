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
-- Name: distance_star_sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_star_sun (
    star_id integer,
    distance integer,
    distance_star_sun_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.distance_star_sun OWNER TO freecodecamp;

--
-- Name: distance_star_sun_relatiom_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_star_sun_relatiom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_star_sun_relatiom_id_seq OWNER TO freecodecamp;

--
-- Name: distance_star_sun_relatiom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_star_sun_relatiom_id_seq OWNED BY public.distance_star_sun.distance_star_sun_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    description text,
    star_id integer
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    temperture numeric(10,2),
    can_host_life boolean,
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
    name character varying(40) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    can_host_life boolean,
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
-- Name: distance_star_sun distance_star_sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_star_sun ALTER COLUMN distance_star_sun_id SET DEFAULT nextval('public.distance_star_sun_relatiom_id_seq'::regclass);


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
-- Data for Name: distance_star_sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_star_sun VALUES (1, 0, 1, 'Sun - Sun');
INSERT INTO public.distance_star_sun VALUES (2, 9, 2, 'Sun - Sirius');
INSERT INTO public.distance_star_sun VALUES (3, 4, 3, 'Sun - Alpha Cenrauri');
INSERT INTO public.distance_star_sun VALUES (4, 640, 4, 'Sun - Betelgeuse');
INSERT INTO public.distance_star_sun VALUES (5, 25, 5, 'Sun - Vega');
INSERT INTO public.distance_star_sun VALUES (6, 550, 6, 'Sun - Antares');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 150, 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384440, 150, 1);
INSERT INTO public.moon VALUES (2, 'Luna', NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Titan', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'lo', NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Enceladus', NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Triton', NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Phobos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'Deminos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'Hyperios', NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'Mimas', NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'Tethys', NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'Dione', NULL, NULL, 3);
INSERT INTO public.moon VALUES (15, 'Rhea', NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Lepetus', NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Miranda', NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Ariel', NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Umberiel', NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, true, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Eris', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Ganymede', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Alpha Cenrauri', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'ABetelgeuse', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Antares', NULL, NULL, NULL, 1);


--
-- Name: distance_star_sun_relatiom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_star_sun_relatiom_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: distance_star_sun distance_star_sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_star_sun
    ADD CONSTRAINT distance_star_sun_pkey PRIMARY KEY (distance_star_sun_id);


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
-- Name: distance_star_sun unique_distance_star_sun_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_star_sun
    ADD CONSTRAINT unique_distance_star_sun_id UNIQUE (distance_star_sun_id);


--
-- Name: distance_star_sun unique_distance_star_sun_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_star_sun
    ADD CONSTRAINT unique_distance_star_sun_name_column UNIQUE (name);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: moon unique_moon_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name_column UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_column UNIQUE (name);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: planet unique_planet_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name_column UNIQUE (name);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star unique_star_name_column; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name_column UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: galaxy star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: distance_star_sun star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_star_sun
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

