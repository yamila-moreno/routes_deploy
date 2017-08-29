--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: routes_route; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE routes_route (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    source character varying(1000) NOT NULL,
    category character varying(100) NOT NULL,
    link character varying(1000)
);


ALTER TABLE routes_route OWNER TO postgres;

--
-- Name: routes_route_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE routes_route_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE routes_route_id_seq OWNER TO postgres;

--
-- Name: routes_route_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE routes_route_id_seq OWNED BY routes_route.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: routes_route id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY routes_route ALTER COLUMN id SET DEFAULT nextval('routes_route_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add route	7	add_route
20	Can change route	7	change_route
21	Can delete route	7	delete_route
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 21, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	routes	route
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 7, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-08-28 18:18:34.297364+00
2	auth	0001_initial	2017-08-28 18:18:34.400194+00
3	admin	0001_initial	2017-08-28 18:18:34.436322+00
4	admin	0002_logentry_remove_auto_add	2017-08-28 18:18:34.454243+00
5	contenttypes	0002_remove_content_type_name	2017-08-28 18:18:34.475235+00
6	auth	0002_alter_permission_name_max_length	2017-08-28 18:18:34.48379+00
7	auth	0003_alter_user_email_max_length	2017-08-28 18:18:34.509106+00
8	auth	0004_alter_user_username_opts	2017-08-28 18:18:34.52082+00
9	auth	0005_alter_user_last_login_null	2017-08-28 18:18:34.532675+00
10	auth	0006_require_contenttypes_0002	2017-08-28 18:18:34.535943+00
11	auth	0007_alter_validators_add_error_messages	2017-08-28 18:18:34.545719+00
12	auth	0008_alter_user_username_max_length	2017-08-28 18:18:34.561095+00
13	routes	0001_initial	2017-08-28 18:18:34.573811+00
14	routes	0002_route_link	2017-08-28 18:18:34.579673+00
15	sessions	0001_initial	2017-08-28 18:18:34.597413+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 15, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: routes_route; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY routes_route (id, name, source, category, link) FROM stdin;
1	ezcaray	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2008-03-14_Ezcaray.gpx	hiking	\N
2	penota	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2013-09-07_La-Pennota.gpx	hiking	\N
3	anie	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2013-09-21_Anie.gpx	hiking	\N
4	bola-del-mundo	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-03-22_Raquetas-Bola-del-Mundo.gpx	hiking	\N
5	presa-gasco	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-03-23_Canal-de-Guadarrama-Presa-del-Gasco.gpx	hiking	\N
6	patones	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-04-06_Patones-Ponton-de-la-oliva.gpx	hiking	\N
7	capileira-cebadillo	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-05-17_De-Capileira-a-Cebadillo.gpx	hiking	\N
8	ordesa	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-06-20_Ordesa-Senda-de-los-Cazadores.gpx	hiking	\N
9	irabia	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-06-21_Embalse-de-Irabia.gpx	hiking	\N
10	canencia	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2014-07-06_Ruta-ecologica-Canencia.gpx	hiking	\N
11	botanica	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2015-01-10_Senda_botanica.gpx	hiking	\N
12	windsor	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2015-07-05_Windsor.gpx	hiking	http://dendarii.es/escapada-senderista-a-windsor/
13	windmills	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2015-08-01_Windmills.gpx	hiking	http://dendarii.es/windmills-path-desde-hassocks-hasta-lewes/
14	dover	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2015-08-08_Dover-White-Cliffs.gpx	hiking	http://dendarii.es/dover-y-los-acantilados-blancos/
15	capital-ring-01	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2015-08-15_CapitalRing01.gpx	hiking	http://dendarii.es/paseo-por-el-capital-ring-1/
16	navalhondo	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2016-03-24_Pradera-Navalhondo.gpx	hiking	http://dendarii.es/semana-santa-2016-la-pradera-de-navalhondo/
17	pelayos	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2016-04-17_Entre-embalses-Pelayos-de-la-presa.gpx	hiking	\N
18	porcieda	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2016-04-30_Porcieda_Tolibes.gpx	hiking	http://dendarii.es/comarca-de-liebana-y-picos-de-europa-nos-vamos-de-potes/
19	fuente-de	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2016-05-01_Raquetas_Fuente_De.gpx	hiking	http://dendarii.es/comarca-de-liebana-y-picos-de-europa-raquetas-y-heidi/
20	arribes	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2016-05-15_Arribes.gpx	hiking	http://dendarii.es/las-arribes-del-duero/
21	cinera	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2017-03-18_Faedo_de_Cinera.gpx	hiking	\N
22	canseco	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2017-03-19_Hayedo_de_Canseco.gpx	hiking	\N
23	hoya	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2017-04-08_Hoya-de-San-Blas.gpx	hiking	\N
24	vereda-cristo	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/hiking/2017-05-21_Vereda-del-Cristo.gpx	hiking	\N
25	loira	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/cycling/2012-09_Loire-a-Velo.gpx	biking	\N
26	boadilla	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/cycling/2015-09-27_Boadilla.gpx	biking	\N
27	fiesta-bici	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/cycling/2015-10-04_Fiesta-de-la-bici.gpx	biking	http://dendarii.es/fiesta-de-la-bici-2015/
28	vv-negrin	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/cycling/2016-03-25_Via-Verde-Negrin.gpx	biking	http://dendarii.es/semana-santa-2016-chinchon-via-verde-negrin-y-colmenar-de-oreja/
29	vv-ojos-negros	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/cycling/2016-05-17_Via_Verde_Ojos_Negros.gpx	biking	http://dendarii.es/via-verde-de-ojos-negros/
30	muir-woods	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-05_Muir-Woods.gpx	trip	\N
31	sequoia-big-trees	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-07_Sequoia-Bear-Hill-Big-Trees-Trail.gpx	trip	\N
32	sequoia-congress	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-07_Sequoia-General-Sherman-Congress-Trail.gpx	trip	\N
34	sequoia-meadow	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-07_Sequoia-Tharps-Log-Crescent-Meadow.gpx	trip	\N
35	yosemite-lower	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-08_Yosemite-Lower-Yosemite-Fall.gpx	trip	\N
36	mono-lake	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-09_Mono-Lake-South-Tufa.gpx	trip	\N
37	yosemite-mist	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-09_Yosemite-Mist-Trail-John-Muir-Trail.gpx	trip	\N
38	zion-canyon	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-12_Zion-Canyon-Overlook.gpx	trip	\N
39	zion-pools	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-12_Zion-Emerald-Pools-Trail.gpx	trip	\N
40	canyon-kaibab	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-13_Grand-Canyon-South-Kaibab-Trail.gpx	trip	\N
41	canyon-helicopter	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/2014-09-14_Grand-Canyon-Helicoptero.gpx	trip	\N
42	matterhorn	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/2015-08-30_Matterhorn.gpx	trip	\N
43	aletsch	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/2015-08-31_Eggishorn-Aletsch.gpx	trip	\N
44	lauternbrunnen	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/2015-09-02_Lauternbrunnen.gpx	trip	\N
45	snp-9	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/2015-09-05_Ruta-9-SNP.gpx	trip	\N
46	snp-12	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/2015-09-06_Ruta-12-SNP.gpx	trip	\N
47	snp-17	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/2015-09-06_Ruta-17-SNP.gpx	trip	\N
49	bled	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-16_Lago_Bled.gpx	trip	\N
50	vintgar	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-16_Vintgar.gpx	trip	\N
51	bohinjski	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-17_Bohinjski_Jezero.gpx	trip	\N
52	voje	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-17_Voje.gpx	trip	\N
53	logarska	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-18_Logarska_Dolina.gpx	trip	\N
54	pokljuka	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-19_Pokljuka.gpx	trip	\N
55	velika	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-20_Velika_Planina.gpx	trip	\N
56	slemenova	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-22_Slemenova.gpx	trip	\N
57	sija	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-23_Sija.gpx	trip	\N
58	parapente	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-23_Vuelo-Parapente.gpx	trip	\N
59	kozjak	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-24_Slap_Kozjak.gpx	trip	\N
60	tolmin	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/eslovenia2016/2016-09-24_Tolmin_Korita.gpx	trip	\N
61	imlill	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-15_Imlil.gpx	trip	\N
62	berber	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-16_Paseo-bereber.gpx	trip	\N
63	cascadas	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-16_Ruta-de-las-cascadas.gpx	trip	\N
64	todra	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-21_Todra.gpx	trip	\N
65	skoura	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-22_Skoura.gpx	trip	\N
66	marrakech	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-24_Marrakech.gpx	trip	\N
67	ruta-usa	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/usa2014/usa-ruta.gpx	car	\N
68	ruta-suiza	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/suiza2015/suiza-ruta.gpx	car	\N
69	ruta-marruecos	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/marruecos-ruta.gpx	car	\N
70	ruta-mhamid	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-19_Mhamid_ida.gpx	car	\N
71	ruta-chegaga	https://raw.githubusercontent.com/yamila-moreno/routes/gh-pages/gpx/marruecos2017/2017-01-20_Erg_Chegaga_vuelta.gpx	car	\N
\.


--
-- Name: routes_route_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('routes_route_id_seq', 71, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: routes_route routes_route_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY routes_route
    ADD CONSTRAINT routes_route_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

