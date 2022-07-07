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
    galaxy_size integer,
    galaxy_distance integer,
    color character varying(30)
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
    name character varying(30),
    crateres boolean,
    planet_id integer NOT NULL,
    viscosidad character varying(40)
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
-- Name: persona; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.persona (
    persona_id integer NOT NULL,
    name character varying(40),
    correo character varying(30) NOT NULL
);


ALTER TABLE public.persona OWNER TO freecodecamp;

--
-- Name: persona_persona_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.persona_persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.persona_persona_id_seq OWNER TO freecodecamp;

--
-- Name: persona_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.persona_persona_id_seq OWNED BY public.persona.persona_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    information text,
    life boolean,
    star_id integer NOT NULL,
    paises character varying(40)
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
    name character varying(30),
    star_distance numeric,
    star_size double precision,
    galaxy_id integer NOT NULL,
    forma character varying(30)
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
-- Name: persona persona_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persona ALTER COLUMN persona_id SET DEFAULT nextval('public.persona_persona_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'andromeda', 34, 2, NULL);
INSERT INTO public.galaxy VALUES (2, 'america', 3, 4, NULL);
INSERT INTO public.galaxy VALUES (3, 'vespucio', 3, 23, NULL);
INSERT INTO public.galaxy VALUES (4, 'sor', 9, 89, 'blue');
INSERT INTO public.galaxy VALUES (5, 'Ades', 7, 4, 'marron');
INSERT INTO public.galaxy VALUES (6, 'izta', 23, 34, 'blanca');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'centaury', true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'omega', true, 1, NULL);
INSERT INTO public.moon VALUES (3, 'alfa', false, 2, NULL);
INSERT INTO public.moon VALUES (4, 'tetha', true, 2, NULL);
INSERT INTO public.moon VALUES (5, 'ro', true, 2, NULL);
INSERT INTO public.moon VALUES (6, 'ra', true, 3, NULL);
INSERT INTO public.moon VALUES (7, 'RI', false, 3, NULL);
INSERT INTO public.moon VALUES (8, 'YO', false, 4, NULL);
INSERT INTO public.moon VALUES (9, 'tr', true, 4, NULL);
INSERT INTO public.moon VALUES (10, 'qwe', true, 5, NULL);
INSERT INTO public.moon VALUES (11, 'UIT', false, 5, NULL);
INSERT INTO public.moon VALUES (12, 'ffd', false, 6, NULL);
INSERT INTO public.moon VALUES (13, 'ERR', false, 7, NULL);
INSERT INTO public.moon VALUES (14, 'RTRT', true, 6, NULL);
INSERT INTO public.moon VALUES (15, 'SDFSDF', true, 5, NULL);
INSERT INTO public.moon VALUES (16, 'ERFF', true, 6, NULL);
INSERT INTO public.moon VALUES (17, 'DDFF', true, 8, NULL);
INSERT INTO public.moon VALUES (18, 'DFDFDFAAJ', false, 4, NULL);
INSERT INTO public.moon VALUES (19, 'RAQE', false, 6, NULL);
INSERT INTO public.moon VALUES (20, 'ffffgp', true, 6, NULL);
INSERT INTO public.moon VALUES (21, 'ERER', true, 9, NULL);


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.persona VALUES (4, 'tania', 'tania@gmail.com');
INSERT INTO public.persona VALUES (5, 'monse', 'monse@gmail.com');
INSERT INTO public.persona VALUES (6, 'fany', 'fany@gmail.com');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', 'bonita y preciosa', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 'frio e oscuro', false, 5, NULL);
INSERT INTO public.planet VALUES (3, 'Edmun', 'Aterrado y frio', false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Hall', 'Caliente y duro', false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Thor', 'Fuerte y agil', true, 6, NULL);
INSERT INTO public.planet VALUES (6, 'Sanscrito', 'elegante', true, 6, NULL);
INSERT INTO public.planet VALUES (7, 'MEXICA', 'ELEGANTE', true, 7, 'teo');
INSERT INTO public.planet VALUES (8, 'Cantor', 'fino y elegante', true, 7, NULL);
INSERT INTO public.planet VALUES (9, 'mALTHUS', 'elegante', true, 1, NULL);
INSERT INTO public.planet VALUES (10, 'pascial', 'fino', false, 7, NULL);
INSERT INTO public.planet VALUES (11, 'arQUIMEDES', 'rey', false, 6, NULL);
INSERT INTO public.planet VALUES (12, 'pacciolli', 'contador', false, 9, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'pera', 2, 1, 1, NULL);
INSERT INTO public.star VALUES (5, 'jesus', 1, 2, 1, NULL);
INSERT INTO public.star VALUES (6, 'america', 3, 45, 1, NULL);
INSERT INTO public.star VALUES (7, 'belem', 3, 2, 2, 'cuadrada');
INSERT INTO public.star VALUES (8, 'rombo', 3, 6, 3, 'rambo');
INSERT INTO public.star VALUES (9, 'amanancio', 4, 9, 4, 'circulo');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: persona_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.persona_persona_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key UNIQUE (color);


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
-- Name: moon moon_viscosidad_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_viscosidad_key UNIQUE (viscosidad);


--
-- Name: persona persona_correo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_correo_key UNIQUE (correo);


--
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (persona_id);


--
-- Name: planet planet_paises_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_paises_key UNIQUE (paises);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_forma_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_forma_key UNIQUE (forma);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
