--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO athul;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO athul;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO athul;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO athul;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO athul;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO athul;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO athul;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO athul;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO athul;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO athul;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO athul;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO athul;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO athul;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO athul;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO athul;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO athul;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO athul;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO athul;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO athul;

--
-- Name: package_blog; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.package_blog (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    url character varying(200) NOT NULL,
    img character varying(100) NOT NULL,
    author character varying(100) NOT NULL
);


ALTER TABLE public.package_blog OWNER TO athul;

--
-- Name: package_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.package_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_blog_id_seq OWNER TO athul;

--
-- Name: package_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.package_blog_id_seq OWNED BY public.package_blog.id;


--
-- Name: package_booking; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.package_booking (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    number character varying(10) NOT NULL,
    package character varying(50) NOT NULL,
    date date NOT NULL,
    package_prize integer NOT NULL,
    place character varying(100) NOT NULL,
    username_id integer NOT NULL
);


ALTER TABLE public.package_booking OWNER TO athul;

--
-- Name: package_booking_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.package_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_booking_id_seq OWNER TO athul;

--
-- Name: package_booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.package_booking_id_seq OWNED BY public.package_booking.id;


--
-- Name: package_destination; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.package_destination (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    img character varying(100) NOT NULL,
    season character varying(50) NOT NULL,
    duration integer NOT NULL,
    food boolean NOT NULL,
    style character varying(10) NOT NULL,
    bus integer NOT NULL,
    car integer NOT NULL,
    trav integer NOT NULL,
    van integer NOT NULL,
    description text NOT NULL,
    banner1 character varying(100) NOT NULL,
    banner2 character varying(100) NOT NULL,
    banner3 character varying(100) NOT NULL,
    banner4 character varying(100) NOT NULL,
    banner5 character varying(100) NOT NULL
);


ALTER TABLE public.package_destination OWNER TO athul;

--
-- Name: package_destination_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.package_destination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_destination_id_seq OWNER TO athul;

--
-- Name: package_destination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.package_destination_id_seq OWNED BY public.package_destination.id;


--
-- Name: package_enquirie; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.package_enquirie (
    id integer NOT NULL,
    package character varying(100) NOT NULL,
    name character varying(100) NOT NULL,
    number character varying(10) NOT NULL,
    message text NOT NULL,
    username_id integer NOT NULL,
    urgent character varying(10) NOT NULL
);


ALTER TABLE public.package_enquirie OWNER TO athul;

--
-- Name: package_enquiry_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.package_enquiry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_enquiry_id_seq OWNER TO athul;

--
-- Name: package_enquiry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.package_enquiry_id_seq OWNED BY public.package_enquirie.id;


--
-- Name: package_feedback; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.package_feedback (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    subject character varying(200) NOT NULL,
    message text NOT NULL,
    rating integer NOT NULL,
    username_id integer NOT NULL
);


ALTER TABLE public.package_feedback OWNER TO athul;

--
-- Name: package_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.package_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_feedback_id_seq OWNER TO athul;

--
-- Name: package_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.package_feedback_id_seq OWNED BY public.package_feedback.id;


--
-- Name: package_testimonial; Type: TABLE; Schema: public; Owner: athul
--

CREATE TABLE public.package_testimonial (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    review text NOT NULL
);


ALTER TABLE public.package_testimonial OWNER TO athul;

--
-- Name: package_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: athul
--

CREATE SEQUENCE public.package_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_testimonials_id_seq OWNER TO athul;

--
-- Name: package_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: athul
--

ALTER SEQUENCE public.package_testimonials_id_seq OWNED BY public.package_testimonial.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: package_blog id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_blog ALTER COLUMN id SET DEFAULT nextval('public.package_blog_id_seq'::regclass);


--
-- Name: package_booking id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_booking ALTER COLUMN id SET DEFAULT nextval('public.package_booking_id_seq'::regclass);


--
-- Name: package_destination id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_destination ALTER COLUMN id SET DEFAULT nextval('public.package_destination_id_seq'::regclass);


--
-- Name: package_enquirie id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_enquirie ALTER COLUMN id SET DEFAULT nextval('public.package_enquiry_id_seq'::regclass);


--
-- Name: package_feedback id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_feedback ALTER COLUMN id SET DEFAULT nextval('public.package_feedback_id_seq'::regclass);


--
-- Name: package_testimonial id; Type: DEFAULT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_testimonial ALTER COLUMN id SET DEFAULT nextval('public.package_testimonials_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add destination	1	add_destination
2	Can change destination	1	change_destination
3	Can delete destination	1	delete_destination
4	Can view destination	1	view_destination
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
29	Can add testimonials	8	add_testimonials
30	Can change testimonials	8	change_testimonials
31	Can delete testimonials	8	delete_testimonials
32	Can view testimonials	8	view_testimonials
33	Can add styles	9	add_styles
34	Can change styles	9	change_styles
35	Can delete styles	9	delete_styles
36	Can view styles	9	view_styles
37	Can add blog	10	add_blog
38	Can change blog	10	change_blog
39	Can delete blog	10	delete_blog
40	Can view blog	10	view_blog
41	Can add testimonial	8	add_testimonial
42	Can change testimonial	8	change_testimonial
43	Can delete testimonial	8	delete_testimonial
44	Can view testimonial	8	view_testimonial
45	Can add booking	11	add_booking
46	Can change booking	11	change_booking
47	Can delete booking	11	delete_booking
48	Can view booking	11	view_booking
49	Can add enquiry	12	add_enquiry
50	Can change enquiry	12	change_enquiry
51	Can delete enquiry	12	delete_enquiry
52	Can view enquiry	12	view_enquiry
53	Can add enquirie	12	add_enquirie
54	Can change enquirie	12	change_enquirie
55	Can delete enquirie	12	delete_enquirie
56	Can view enquirie	12	view_enquirie
57	Can add feedback	13	add_feedback
58	Can change feedback	13	change_feedback
59	Can delete feedback	13	delete_feedback
60	Can view feedback	13	view_feedback
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
16	pbkdf2_sha256$216000$Kw1t24iY0I8T$vvFKZQw3GNAb8+eQNeK8PyBgCwizqzIKSAE1FKsQ3x8=	2020-10-23 13:22:38.089873+05:30	f	abhishek10	Abishek		abhishek10@gmail.com	f	t	2020-10-23 13:22:29.898949+05:30
15	pbkdf2_sha256$216000$YO4rIHKjNB7c$I4hJPXVsaqn3iTs9PDomYLnSaHcQc9eSd4N9zjolZWE=	2020-10-30 08:47:35.052848+05:30	f	loyed07	loyed		loyed07@gmail.com	f	t	2020-10-23 13:14:25.949204+05:30
14	pbkdf2_sha256$216000$RgR9Vnxaclov$0xcAy99TWB7Mo7UYqv3Lt8Yovto++iE3yyXrQDMwCO8=	2020-10-30 12:13:59.723062+05:30	f	govind07	govind		govind07@gmail.com	f	t	2020-10-22 12:21:30.617706+05:30
13	pbkdf2_sha256$216000$QZIRF6kABDCq$PJERuppMuF0OJ2hYmtR2m49KJFkJhyGomEsKtqobRaY=	2020-11-06 20:09:26.501337+05:30	f	logan	Logan		logan@gmail.com	f	t	2020-10-21 14:09:09.599768+05:30
1	pbkdf2_sha256$216000$gz9hBVAW4n6Z$irL5bbih3SEmHpWM3kgrOs5qUGSI+LPpdUZIsC5pkbY=	2020-11-07 20:30:25.016409+05:30	t	athul			athuldineshan5@gmail.com	t	t	2020-10-14 20:45:31.911487+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-10-14 20:58:13.916003+05:30	1	Destination object (1)	1	[{"added": {}}]	1	1
2	2020-10-14 20:59:50.245443+05:30	2	Destination object (2)	1	[{"added": {}}]	1	1
3	2020-10-14 21:41:43.357789+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Img"]}}]	1	1
4	2020-10-14 21:41:53.36271+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Img"]}}]	1	1
5	2020-10-14 21:42:00.70756+05:30	2	Destination object (2)	2	[{"changed": {"fields": ["Img"]}}]	1	1
6	2020-10-14 21:44:55.925336+05:30	2	Destination object (2)	2	[{"changed": {"fields": ["Img"]}}]	1	1
7	2020-10-14 21:45:10.955714+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Img"]}}]	1	1
8	2020-10-14 22:03:17.940807+05:30	1	Destination object (1)	2	[]	1	1
9	2020-10-14 22:03:23.451075+05:30	2	Destination object (2)	2	[]	1	1
10	2020-10-19 18:55:55.490458+05:30	1	Testimonials object (1)	1	[{"added": {}}]	8	1
11	2020-10-19 18:56:12.991693+05:30	1	Testimonials object (1)	2	[]	8	1
12	2020-10-19 19:12:47.543741+05:30	2	Testimonials object (2)	1	[{"added": {}}]	8	1
13	2020-10-19 20:50:31.318432+05:30	1	styles object (1)	1	[{"added": {}}]	9	1
14	2020-10-19 20:50:40.019833+05:30	2	styles object (2)	1	[{"added": {}}]	9	1
15	2020-10-19 20:50:48.575548+05:30	3	styles object (3)	1	[{"added": {}}]	9	1
16	2020-10-19 20:50:55.678112+05:30	4	styles object (4)	1	[{"added": {}}]	9	1
17	2020-10-19 20:51:08.95988+05:30	5	styles object (5)	1	[{"added": {}}]	9	1
18	2020-10-19 20:51:16.303747+05:30	6	styles object (6)	1	[{"added": {}}]	9	1
19	2020-10-19 21:20:32.267997+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Style1-style6"]}}]	1	1
20	2020-10-19 21:20:40.694788+05:30	2	Destination object (2)	2	[{"changed": {"fields": ["Style1-style6"]}}]	1	1
21	2020-10-19 21:49:20.526438+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Car Prize (4 people)", "Mini-Van Prize (12 people)", "Traveller Prize (24 people)", "Air Bus Prize (42 people)", "Description"]}}]	1	1
22	2020-10-19 21:51:52.669117+05:30	2	Destination object (2)	2	[{"changed": {"fields": ["Car Prize (4 people)", "Mini-Van Prize (12 people)", "Traveller Prize (24 people)", "Air Bus Prize (42 people)", "Description"]}}]	1	1
23	2020-10-19 21:51:57.645282+05:30	2	Destination object (2)	2	[]	1	1
24	2020-10-20 00:06:30.632019+05:30	1	Blog object (1)	1	[{"added": {}}]	10	1
25	2020-10-20 00:12:21.746841+05:30	2	Blog object (2)	1	[{"added": {}}]	10	1
26	2020-10-20 00:15:03.512471+05:30	3	Blog object (3)	1	[{"added": {}}]	10	1
27	2020-10-20 00:16:28.895261+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Description"]}}]	1	1
28	2020-10-20 00:16:51.421041+05:30	2	Destination object (2)	2	[{"changed": {"fields": ["Description"]}}]	1	1
29	2020-10-20 00:21:57.610254+05:30	3	Destination object (3)	1	[{"added": {}}]	1	1
30	2020-10-20 00:27:51.812774+05:30	4	Destination object (4)	1	[{"added": {}}]	1	1
31	2020-10-20 13:09:19.689796+05:30	1	Testimonial object (1)	2	[{"changed": {"fields": ["Name"]}}]	8	1
32	2020-10-20 13:09:22.897942+05:30	1	Testimonial object (1)	2	[]	8	1
33	2020-10-21 02:48:47.918766+05:30	2	Booking object (2)	3		11	1
34	2020-10-21 02:48:48.087269+05:30	1	Booking object (1)	3		11	1
35	2020-10-21 11:56:26.770829+05:30	1	Destination object (1)	2	[{"changed": {"fields": ["Banner1", "Banner2", "Banner3", "Banner4", "Banner5"]}}]	1	1
36	2020-10-21 11:57:13.401366+05:30	2	Destination object (2)	2	[{"changed": {"fields": ["Banner1", "Banner2", "Banner3", "Banner4", "Banner5"]}}]	1	1
37	2020-10-21 11:57:52.50481+05:30	3	Destination object (3)	2	[{"changed": {"fields": ["Banner1", "Banner2", "Banner3", "Banner4", "Banner5"]}}]	1	1
38	2020-10-21 11:58:21.642597+05:30	4	Destination object (4)	2	[{"changed": {"fields": ["Banner1", "Banner2", "Banner3", "Banner4", "Banner5"]}}]	1	1
39	2020-10-22 12:01:56.224162+05:30	17	Booking object (17)	3		11	1
40	2020-10-22 12:01:56.498863+05:30	16	Booking object (16)	3		11	1
41	2020-10-22 12:01:56.515511+05:30	15	Booking object (15)	3		11	1
42	2020-10-22 12:01:56.533065+05:30	14	Booking object (14)	3		11	1
43	2020-10-22 12:01:56.549829+05:30	13	Booking object (13)	3		11	1
44	2020-10-22 12:01:56.567462+05:30	12	Booking object (12)	3		11	1
45	2020-10-22 12:01:56.584307+05:30	11	Booking object (11)	3		11	1
46	2020-10-22 12:01:56.601921+05:30	10	Booking object (10)	3		11	1
47	2020-10-22 12:01:56.619084+05:30	8	Booking object (8)	3		11	1
48	2020-10-22 12:01:56.636808+05:30	7	Booking object (7)	3		11	1
49	2020-10-22 12:01:56.653889+05:30	6	Booking object (6)	3		11	1
50	2020-10-22 12:01:56.682521+05:30	5	Booking object (5)	3		11	1
51	2020-10-22 12:01:56.699377+05:30	4	Booking object (4)	3		11	1
52	2020-10-22 12:01:56.716773+05:30	3	Booking object (3)	3		11	1
53	2020-10-22 12:02:19.448639+05:30	8	Enquirie object (8)	3		12	1
54	2020-10-22 12:02:19.475795+05:30	7	Enquirie object (7)	3		12	1
55	2020-10-22 12:02:19.492331+05:30	6	Enquirie object (6)	3		12	1
56	2020-10-22 12:02:19.510109+05:30	5	Enquirie object (5)	3		12	1
57	2020-10-22 12:02:19.548986+05:30	4	Enquirie object (4)	3		12	1
58	2020-10-22 12:02:19.566633+05:30	3	Enquirie object (3)	3		12	1
59	2020-10-22 12:02:19.583364+05:30	2	Enquirie object (2)	3		12	1
60	2020-10-22 12:02:19.601041+05:30	1	Enquirie object (1)	3		12	1
61	2020-10-22 12:02:41.453164+05:30	1	Feedback object (1)	3		13	1
62	2020-10-22 13:43:00.548067+05:30	9	Enquirie object (9)	3		12	1
63	2020-10-23 12:40:30.552031+05:30	3	abhiduke	3		5	1
64	2020-10-23 12:40:30.961645+05:30	11	Dhoni	3		5	1
65	2020-10-23 12:40:30.978278+05:30	10	goku	3		5	1
66	2020-10-23 12:40:30.994941+05:30	6	govind	3		5	1
67	2020-10-23 12:40:31.328845+05:30	12	gum	3		5	1
68	2020-10-23 12:40:31.364639+05:30	5	guy25	3		5	1
69	2020-10-23 12:40:31.380818+05:30	4	loied	3		5	1
70	2020-10-23 12:40:31.397575+05:30	7	pottan	3		5	1
71	2020-10-23 12:40:31.415812+05:30	8	pottan05	3		5	1
72	2020-10-23 12:40:31.433134+05:30	9	shaji	3		5	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	package	destination
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
9	package	styles
10	package	blog
8	package	testimonial
11	package	booking
12	package	enquirie
13	package	feedback
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-10-14 20:38:57.056599+05:30
2	auth	0001_initial	2020-10-14 20:38:57.792682+05:30
3	admin	0001_initial	2020-10-14 20:38:59.245971+05:30
4	admin	0002_logentry_remove_auto_add	2020-10-14 20:38:59.738782+05:30
5	admin	0003_logentry_add_action_flag_choices	2020-10-14 20:38:59.768207+05:30
6	contenttypes	0002_remove_content_type_name	2020-10-14 20:38:59.807151+05:30
7	auth	0002_alter_permission_name_max_length	2020-10-14 20:38:59.836769+05:30
8	auth	0003_alter_user_email_max_length	2020-10-14 20:38:59.875221+05:30
9	auth	0004_alter_user_username_opts	2020-10-14 20:38:59.908861+05:30
10	auth	0005_alter_user_last_login_null	2020-10-14 20:38:59.940702+05:30
11	auth	0006_require_contenttypes_0002	2020-10-14 20:38:59.958172+05:30
12	auth	0007_alter_validators_add_error_messages	2020-10-14 20:38:59.982616+05:30
13	auth	0008_alter_user_username_max_length	2020-10-14 20:39:00.091161+05:30
14	auth	0009_alter_user_last_name_max_length	2020-10-14 20:39:00.159664+05:30
15	auth	0010_alter_group_name_max_length	2020-10-14 20:39:00.196706+05:30
16	auth	0011_update_proxy_permissions	2020-10-14 20:39:00.230042+05:30
17	auth	0012_alter_user_first_name_max_length	2020-10-14 20:39:00.264306+05:30
18	package	0001_initial	2020-10-14 20:39:00.358058+05:30
19	sessions	0001_initial	2020-10-14 20:39:00.56535+05:30
20	package	0002_auto_20201014_1545	2020-10-14 21:15:57.029101+05:30
21	package	0003_auto_20201014_1555	2020-10-14 21:25:46.742285+05:30
22	package	0004_auto_20201014_1604	2020-10-14 21:34:40.682612+05:30
23	package	0005_auto_20201014_1632	2020-10-14 22:02:51.706577+05:30
24	package	0006_auto_20201015_1646	2020-10-15 22:18:38.785254+05:30
25	package	0007_testimonials	2020-10-19 18:44:10.345237+05:30
26	package	0008_styles	2020-10-19 20:49:54.893338+05:30
27	package	0009_auto_20201019_1549	2020-10-19 21:20:01.784866+05:30
28	package	0010_auto_20201019_1614	2020-10-19 21:45:00.568962+05:30
29	package	0011_auto_20201019_1820	2020-10-19 23:54:58.58805+05:30
30	package	0012_auto_20201019_1824	2020-10-19 23:54:58.73397+05:30
31	package	0013_auto_20201019_1827	2020-10-19 23:57:32.877319+05:30
32	package	0014_booking	2020-10-21 02:38:06.473685+05:30
33	package	0015_auto_20201020_2118	2020-10-21 02:48:26.094786+05:30
34	package	0016_auto_20201020_2139	2020-10-21 03:09:30.556315+05:30
35	package	0017_auto_20201021_0624	2020-10-21 11:54:48.27496+05:30
36	package	0018_enquiry	2020-10-21 13:56:20.201011+05:30
37	package	0019_auto_20201021_0830	2020-10-21 14:01:03.362314+05:30
38	package	0020_auto_20201021_0831	2020-10-21 14:02:01.401687+05:30
39	package	0021_feedback	2020-10-22 01:16:16.868533+05:30
40	package	0022_auto_20201022_0633	2020-10-22 12:04:01.818613+05:30
41	package	0023_enquirie_urgent	2020-10-22 13:44:26.535169+05:30
42	package	0024_auto_20201022_0844	2020-10-22 14:14:16.347382+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: package_blog; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.package_blog (id, title, url, img, author) FROM stdin;
1	GOA TRAVEL GUIDE: BEST OF OFF-BEAT GOA (WITHOUT THE CROWDS)	https://soultravelblog.com/responsible-travel-goa-travel-blog/	imgs/blog_goa_720x480.jpg	Soul Travel
2	Seeking Cooler Climes	https://www.travelblog.org/Asia/India/Tamil-Nadu/Ooty/blog-986432.html	imgs/1585825644_ooty_720x480.jpg	Jim Neale
3	The Secrets Of Murudeshwar	https://trablogger.com/the-secrets-of-murudeshwar/	imgs/dsc07150_1547660036-1317e_720x480.jpg	Trablogger
\.


--
-- Data for Name: package_booking; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.package_booking (id, name, number, package, date, package_prize, place, username_id) FROM stdin;
\.


--
-- Data for Name: package_destination; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.package_destination (id, name, img, season, duration, food, style, bus, car, trav, van, description, banner1, banner2, banner3, banner4, banner5) FROM stdin;
2	Chikmangalore	imgs/maxresdefault_720x480.jpg	summer	6	t	style2	35000	5000	20000	10000	Chikmagalur is a beautiful district situated on the western part of Karnataka. It is mostly popular for its coffee plantations and a pleasant climate. Another renowned attraction that Chikmagalur is known for is its Bababudan Giri ranges. Though it was among the underexplored destinations, the hill station thanks to its picturesque landscapes and greenery has earned a lot of attention from tourists across. The literal meaning of Chikmagalur is ‘Land of the younger daughter.’\r\n\r\nThere is a rich history attached to how Chikmagalur got its name. It is said that years ago the land of this district was given as a dowry to the younger daughter of a legendary chief who ruled Sakrepatna- Rukmangada. And that is how it was named. Chikmagalur as rugged terrains, stunning mountain regions and also has lowlands. Because it is situated amidst beautiful landscapes and untouched environs, this is one destination that you must explore. There is also a local belief that coffee was first made in Chikmagalur. Ask the locals here and they will tell you that Babu Budan who was a Muslim saint brought the coffee seeds in 1670 from Yemen and cultivated them here. And from there on the plantations just grew and the British also played a big role in the growth. You will also find the Central Coffee Research Institution here.	imgs/banner1_QOVOQtb.jpg	imgs/banner2_Uri59fr.jpg	imgs/banner3_EPwe8Lv.jpg	imgs/banner4_StGJHKe.jpg	imgs/banner5_vE1sLDL.jpg
3	Murudeshwar	imgs/ShivastatueMurudeshwar_720x480.jpg	summer	3	t	style3	35000	6000	22000	15000	Murudeshwar is home to the second tallest statue of Lord Shiva (123 ft) in the world. With the shimmering Arabian Sea on three sides and the magnificent Western Ghats imposing their presence on this town, it is a favourite picnic spot for the folks from Kerala and Karnataka. The beaches and the adventure activities around Netrani island are significant attractions for the tourists.\r\n\r\nMurudeshwar temple and fort are also the most visited spots, captivating one with their rustic charm and beauty. Nearby Netrani island is also a trendy spot for tourists as it offers excellent snorkelling and scuba diving opportunities. The Murudeshwar beach, however, has become a little overcrowded and dirty due to human intervention and could be avoided.	imgs/banner1_R0JfLBV.jpg	imgs/banner2_m4oWaax.jpg	imgs/banner3_9woIHUv.jpg	imgs/banner4_4ARM5Pk.jpg	imgs/banner5_oRrATtQ.jpg
1	Goa	imgs/One-day-in-Goa-Itinerary_720x480.jpg	spring	5	t	style1	55000	10000	35000	20000	Goa is a land that redefines holidays, with its exquisite mix of sun, surf, and beaches; Goa has become the ultimate tourist destination. Goa is a tiny emeralds land with its natural scenic beauty, attractive beaches and temples, famous for its architecture, feast and festivals and hospitable people with a rich culture. So get swept away in Goa by the spectacular sunrises and sunsets and rejuvenate yourself.\r\n\r\nPanaji (Panjim) is the state's capital of Goa, Vasco da Gama (Vasco) the largest city, while the historic city of Margao still exhibits the influence of Portuguese culture in Goa. Portuguese merchants first landed in Goa in the 15th century, and annexed it soon after. The Portuguese colony existed for about 450 years (one of the longest held colonial possessions in the world), until it was taken over by India in 1961.\r\n\r\nRenowned for its beaches, Goa is visited by hundreds of thousands of international and domestic tourists each year. Goa is also known for its temples and world heritage architecture including the Basilica of Bom Jesus in Old Goa, which makes it one of the biggest Christian pilgrimage sites in Asia.Goa also has rich flora and fauna, owing to its location on the Western Ghats range, which is classified as a biodiversity hotspot.	imgs/banner1.jpg	imgs/banner2.jpg	imgs/banner3.jpg	imgs/banner4.jpg	imgs/banner5.jpg
4	Ooty	imgs/1546943793_ooty_tripoto_recommends_720x480.jpg	winter	4	t	style4	35000	10000	25000	15000	This is located in the Western Ghats zone at an altitude of 2240 mtrs. It is the headquarters of the Nilgiri District, where the two mountain ranges meet. Udhagamandalam , popularly called as OOTY by the tourist, is the Queen of Hill Stations. Centuries ago this was also called as Oththai-Kal [single stone] Mandu [ Mund is a name of Toda Village]. The British started calling it as Ootacamund. Coffee and Tea Plantations and trees like Conifers, Eucalyptus, Pine and Wattle dot the hill side in Udhagamandalam and its environs. \r\n\r\nSummer temperature is maximum of 25 C and a minimum of 10 C .During the Winter it is minimum 5 C and a maximum of 21 C when it is slightly warmer. This area was inhibited by the tribals called TODA long before any body could venture into this region. Curiously enough, this slice of paradise remained unknown even during the periods of the great Southern Dynasties. It was the Britons who ventured into the riches of the regions during early 1800’s. Development and modernization took after their arrival to Udhagamandalam. This was the Summer Capital of the Madras Presidency during the British Rule. Coonoor - 19Kms, Kothagiri - 31 Kms are the other smaller nearby hill stations.The Town population is 88,430(2011 census) and Nilgiri District population is 7,33,394(2011 census).	imgs/banner1_l3aGdwH.jpg	imgs/banner2.jpeg	imgs/banner3_hqPXeeW.jpg	imgs/banner4_c2Kmb9q.jpg	imgs/banner5.JPG
\.


--
-- Data for Name: package_enquirie; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.package_enquirie (id, package, name, number, message, username_id, urgent) FROM stdin;
\.


--
-- Data for Name: package_feedback; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.package_feedback (id, name, email, subject, message, rating, username_id) FROM stdin;
\.


--
-- Data for Name: package_testimonial; Type: TABLE DATA; Schema: public; Owner: athul
--

COPY public.package_testimonial (id, name, review) FROM stdin;
2	Govind	Good travel guides and an even better quality of service throught the trip. Had great fun with travel bug on visiting chikmangalore. Looking forward to another trip in the future with travelbug
1	Abhishek Duke	Thank you , travel bug for helping me find the ideal package for my honey moon. We had some splended time at the beaches  of goa  and some peaceful meditaion at the muradeshwar temple
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 16, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 72, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);


--
-- Name: package_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.package_blog_id_seq', 3, true);


--
-- Name: package_booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.package_booking_id_seq', 58, true);


--
-- Name: package_destination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.package_destination_id_seq', 4, true);


--
-- Name: package_enquiry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.package_enquiry_id_seq', 18, true);


--
-- Name: package_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.package_feedback_id_seq', 5, true);


--
-- Name: package_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: athul
--

SELECT pg_catalog.setval('public.package_testimonials_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: package_blog package_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_blog
    ADD CONSTRAINT package_blog_pkey PRIMARY KEY (id);


--
-- Name: package_booking package_booking_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_booking
    ADD CONSTRAINT package_booking_pkey PRIMARY KEY (id);


--
-- Name: package_destination package_destination_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_destination
    ADD CONSTRAINT package_destination_pkey PRIMARY KEY (id);


--
-- Name: package_enquirie package_enquiry_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_enquirie
    ADD CONSTRAINT package_enquiry_pkey PRIMARY KEY (id);


--
-- Name: package_feedback package_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_feedback
    ADD CONSTRAINT package_feedback_pkey PRIMARY KEY (id);


--
-- Name: package_testimonial package_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_testimonial
    ADD CONSTRAINT package_testimonials_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: package_booking_username_id_5b2c4ab3; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX package_booking_username_id_5b2c4ab3 ON public.package_booking USING btree (username_id);


--
-- Name: package_enquirie_username_id_ec180e27; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX package_enquirie_username_id_ec180e27 ON public.package_enquirie USING btree (username_id);


--
-- Name: package_feedback_username_id_d2d3def9; Type: INDEX; Schema: public; Owner: athul
--

CREATE INDEX package_feedback_username_id_d2d3def9 ON public.package_feedback USING btree (username_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: package_booking package_booking_username_id_5b2c4ab3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_booking
    ADD CONSTRAINT package_booking_username_id_5b2c4ab3_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: package_enquirie package_enquirie_username_id_ec180e27_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_enquirie
    ADD CONSTRAINT package_enquirie_username_id_ec180e27_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: package_feedback package_feedback_username_id_d2d3def9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: athul
--

ALTER TABLE ONLY public.package_feedback
    ADD CONSTRAINT package_feedback_username_id_d2d3def9_fk_auth_user_id FOREIGN KEY (username_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

