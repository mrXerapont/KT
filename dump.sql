--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO user_name;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO user_name;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO user_name;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO user_name;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO user_name;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO user_name;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO user_name;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO user_name;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO user_name;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO user_name;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO user_name;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO user_name;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);


ALTER TABLE public.celery_taskmeta OWNER TO user_name;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.celery_taskmeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celery_taskmeta_id_seq OWNER TO user_name;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.celery_taskmeta_id_seq OWNED BY public.celery_taskmeta.id;


--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);


ALTER TABLE public.celery_tasksetmeta OWNER TO user_name;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.celery_tasksetmeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celery_tasksetmeta_id_seq OWNER TO user_name;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.celery_tasksetmeta_id_seq OWNED BY public.celery_tasksetmeta.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: user_name
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


ALTER TABLE public.django_admin_log OWNER TO user_name;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO user_name;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO user_name;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO user_name;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO user_name;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO user_name;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO user_name;

--
-- Name: djcelery_crontabschedule; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);


ALTER TABLE public.djcelery_crontabschedule OWNER TO user_name;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.djcelery_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djcelery_crontabschedule_id_seq OWNER TO user_name;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.djcelery_crontabschedule_id_seq OWNED BY public.djcelery_crontabschedule.id;


--
-- Name: djcelery_intervalschedule; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE public.djcelery_intervalschedule OWNER TO user_name;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.djcelery_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djcelery_intervalschedule_id_seq OWNER TO user_name;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.djcelery_intervalschedule_id_seq OWNED BY public.djcelery_intervalschedule.id;


--
-- Name: djcelery_periodictask; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE public.djcelery_periodictask OWNER TO user_name;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.djcelery_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djcelery_periodictask_id_seq OWNER TO user_name;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.djcelery_periodictask_id_seq OWNED BY public.djcelery_periodictask.id;


--
-- Name: djcelery_periodictasks; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE public.djcelery_periodictasks OWNER TO user_name;

--
-- Name: djcelery_taskstate; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    hidden boolean NOT NULL,
    worker_id integer
);


ALTER TABLE public.djcelery_taskstate OWNER TO user_name;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.djcelery_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djcelery_taskstate_id_seq OWNER TO user_name;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.djcelery_taskstate_id_seq OWNED BY public.djcelery_taskstate.id;


--
-- Name: djcelery_workerstate; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);


ALTER TABLE public.djcelery_workerstate OWNER TO user_name;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.djcelery_workerstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djcelery_workerstate_id_seq OWNER TO user_name;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.djcelery_workerstate_id_seq OWNED BY public.djcelery_workerstate.id;


--
-- Name: sender_repeat_type; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.sender_repeat_type (
    id integer NOT NULL,
    repeat_name character varying(20) NOT NULL
);


ALTER TABLE public.sender_repeat_type OWNER TO user_name;

--
-- Name: sender_repeat_type_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.sender_repeat_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sender_repeat_type_id_seq OWNER TO user_name;

--
-- Name: sender_repeat_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.sender_repeat_type_id_seq OWNED BY public.sender_repeat_type.id;


--
-- Name: sender_snd; Type: TABLE; Schema: public; Owner: user_name
--

CREATE TABLE public.sender_snd (
    id integer NOT NULL,
    description text,
    mailto character varying(254) NOT NULL,
    text text NOT NULL,
    dtime timestamp with time zone NOT NULL,
    repeat_id integer NOT NULL
);


ALTER TABLE public.sender_snd OWNER TO user_name;

--
-- Name: sender_snd_id_seq; Type: SEQUENCE; Schema: public; Owner: user_name
--

CREATE SEQUENCE public.sender_snd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sender_snd_id_seq OWNER TO user_name;

--
-- Name: sender_snd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user_name
--

ALTER SEQUENCE public.sender_snd_id_seq OWNED BY public.sender_snd.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: celery_taskmeta id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('public.celery_taskmeta_id_seq'::regclass);


--
-- Name: celery_tasksetmeta id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('public.celery_tasksetmeta_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: djcelery_crontabschedule id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.djcelery_crontabschedule_id_seq'::regclass);


--
-- Name: djcelery_intervalschedule id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.djcelery_intervalschedule_id_seq'::regclass);


--
-- Name: djcelery_periodictask id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('public.djcelery_periodictask_id_seq'::regclass);


--
-- Name: djcelery_taskstate id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('public.djcelery_taskstate_id_seq'::regclass);


--
-- Name: djcelery_workerstate id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('public.djcelery_workerstate_id_seq'::regclass);


--
-- Name: sender_repeat_type id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.sender_repeat_type ALTER COLUMN id SET DEFAULT nextval('public.sender_repeat_type_id_seq'::regclass);


--
-- Name: sender_snd id; Type: DEFAULT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.sender_snd ALTER COLUMN id SET DEFAULT nextval('public.sender_snd_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Информатор	7	add_snd
26	Can change Информатор	7	change_snd
27	Can delete Информатор	7	delete_snd
28	Can view Информатор	7	view_snd
29	Can add Частота повторения	8	add_repeat_type
30	Can change Частота повторения	8	change_repeat_type
31	Can delete Частота повторения	8	delete_repeat_type
32	Can view Частота повторения	8	view_repeat_type
33	Can add crontab	9	add_crontabschedule
34	Can change crontab	9	change_crontabschedule
35	Can delete crontab	9	delete_crontabschedule
36	Can view crontab	9	view_crontabschedule
37	Can add interval	10	add_intervalschedule
38	Can change interval	10	change_intervalschedule
39	Can delete interval	10	delete_intervalschedule
40	Can view interval	10	view_intervalschedule
41	Can add periodic task	11	add_periodictask
42	Can change periodic task	11	change_periodictask
43	Can delete periodic task	11	delete_periodictask
44	Can view periodic task	11	view_periodictask
45	Can add periodic tasks	12	add_periodictasks
46	Can change periodic tasks	12	change_periodictasks
47	Can delete periodic tasks	12	delete_periodictasks
48	Can view periodic tasks	12	view_periodictasks
49	Can add task state	13	add_taskmeta
50	Can change task state	13	change_taskmeta
51	Can delete task state	13	delete_taskmeta
52	Can view task state	13	view_taskmeta
53	Can add saved group result	14	add_tasksetmeta
54	Can change saved group result	14	change_tasksetmeta
55	Can delete saved group result	14	delete_tasksetmeta
56	Can view saved group result	14	view_tasksetmeta
57	Can add task	15	add_taskstate
58	Can change task	15	change_taskstate
59	Can delete task	15	delete_taskstate
60	Can view task	15	view_taskstate
61	Can add worker	16	add_workerstate
62	Can change worker	16	change_workerstate
63	Can delete worker	16	delete_workerstate
64	Can view worker	16	view_workerstate
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$Xqu73hTG39bS$8TI89Lj/fh8EEkwvCgtxjIKTp7EFpa0d81O2+tshXzY=	2020-05-27 19:35:18.875069+04	t	user			3@3.ru	t	t	2020-05-27 14:35:10.61504+04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
\.


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-05-27 14:36:52.090965+04	1	Никогда	1	[{"added": {}}]	8	1
2	2020-05-27 14:37:13.916557+04	2	Ежедневно	1	[{"added": {}}]	8	1
3	2020-05-27 14:37:25.84093+04	3	Еженедельно	1	[{"added": {}}]	8	1
4	2020-05-27 14:37:34.782204+04	4	Ежемесячно	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sender	snd
8	sender	repeat_type
9	djcelery	crontabschedule
10	djcelery	intervalschedule
11	djcelery	periodictask
12	djcelery	periodictasks
13	djcelery	taskmeta
14	djcelery	tasksetmeta
15	djcelery	taskstate
16	djcelery	workerstate
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-27 14:14:14.524526+04
2	auth	0001_initial	2020-05-27 14:14:14.604516+04
3	admin	0001_initial	2020-05-27 14:14:14.709415+04
4	admin	0002_logentry_remove_auto_add	2020-05-27 14:14:14.740504+04
5	admin	0003_logentry_add_action_flag_choices	2020-05-27 14:14:14.760502+04
6	contenttypes	0002_remove_content_type_name	2020-05-27 14:14:14.793673+04
7	auth	0002_alter_permission_name_max_length	2020-05-27 14:14:14.804151+04
8	auth	0003_alter_user_email_max_length	2020-05-27 14:14:14.818909+04
9	auth	0004_alter_user_username_opts	2020-05-27 14:14:14.83584+04
10	auth	0005_alter_user_last_login_null	2020-05-27 14:14:14.858801+04
11	auth	0006_require_contenttypes_0002	2020-05-27 14:14:14.863719+04
12	auth	0007_alter_validators_add_error_messages	2020-05-27 14:14:14.884342+04
13	auth	0008_alter_user_username_max_length	2020-05-27 14:14:14.90456+04
14	auth	0009_alter_user_last_name_max_length	2020-05-27 14:14:14.923494+04
15	auth	0010_alter_group_name_max_length	2020-05-27 14:14:14.94846+04
16	auth	0011_update_proxy_permissions	2020-05-27 14:14:14.962308+04
17	djcelery	0001_initial	2020-05-27 14:14:15.097862+04
18	sender	0001_initial	2020-05-27 14:14:15.210049+04
19	sender	0002_auto_20200522_1450	2020-05-27 14:14:15.243467+04
20	sender	0003_auto_20200522_1513	2020-05-27 14:14:15.279308+04
21	sessions	0001_initial	2020-05-27 14:14:15.303184+04
22	sender	0004_auto_20200527_1427	2020-05-27 14:35:25.134824+04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
iqw6iss6qsyxtdj1fx048fq19av4sw11	OWI4OWI3OTQ4NmM0ZDcyODQ0YmE4ZmFkZDY5YzQ4MGFjMmNjNTkxZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTA5NDc5YjU1ZmJiMGUxYjFhZjZkMTZlMzljMWQ5YzhiYTRiZmQwIn0=	2020-06-10 14:36:35.528737+04
zgpjfhrnecoueevky0klarfbfeg32zvr	OWI4OWI3OTQ4NmM0ZDcyODQ0YmE4ZmFkZDY5YzQ4MGFjMmNjNTkxZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTA5NDc5YjU1ZmJiMGUxYjFhZjZkMTZlMzljMWQ5YzhiYTRiZmQwIn0=	2020-06-10 19:35:18.881186+04
\.


--
-- Data for Name: djcelery_crontabschedule; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
\.


--
-- Data for Name: djcelery_intervalschedule; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.djcelery_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Data for Name: djcelery_periodictask; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) FROM stdin;
\.


--
-- Data for Name: djcelery_periodictasks; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.djcelery_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: djcelery_taskstate; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, hidden, worker_id) FROM stdin;
\.


--
-- Data for Name: djcelery_workerstate; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
\.


--
-- Data for Name: sender_repeat_type; Type: TABLE DATA; Schema: public; Owner: user_name
--

COPY public.sender_repeat_type (id, repeat_name) FROM stdin;
1	Никогда
2	Ежедневно
3	Еженедельно
4	Ежемесячно
\.



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.celery_taskmeta_id_seq', 1, false);


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.celery_tasksetmeta_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.djcelery_crontabschedule_id_seq', 1, false);


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.djcelery_intervalschedule_id_seq', 1, false);


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.djcelery_periodictask_id_seq', 1, false);


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.djcelery_taskstate_id_seq', 1, false);


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.djcelery_workerstate_id_seq', 1, false);


--
-- Name: sender_repeat_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.sender_repeat_type_id_seq', 4, true);


--
-- Name: sender_snd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user_name
--

SELECT pg_catalog.setval('public.sender_snd_id_seq', 19, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: celery_taskmeta celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: djcelery_crontabschedule djcelery_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_intervalschedule djcelery_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictask djcelery_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);


--
-- Name: djcelery_periodictask djcelery_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictasks djcelery_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: djcelery_taskstate djcelery_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);


--
-- Name: djcelery_taskstate djcelery_taskstate_task_id_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);


--
-- Name: djcelery_workerstate djcelery_workerstate_hostname_key; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);


--
-- Name: djcelery_workerstate djcelery_workerstate_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);


--
-- Name: sender_repeat_type sender_repeat_type_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.sender_repeat_type
    ADD CONSTRAINT sender_repeat_type_pkey PRIMARY KEY (id);


--
-- Name: sender_snd sender_snd_pkey; Type: CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.sender_snd
    ADD CONSTRAINT sender_snd_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: celery_taskmeta_hidden_23fd02dc; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX celery_taskmeta_hidden_23fd02dc ON public.celery_taskmeta USING btree (hidden);


--
-- Name: celery_taskmeta_task_id_9558b198_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX celery_taskmeta_task_id_9558b198_like ON public.celery_taskmeta USING btree (task_id varchar_pattern_ops);


--
-- Name: celery_tasksetmeta_hidden_593cfc24; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX celery_tasksetmeta_hidden_593cfc24 ON public.celery_tasksetmeta USING btree (hidden);


--
-- Name: celery_tasksetmeta_taskset_id_a5a1d4ae_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX celery_tasksetmeta_taskset_id_a5a1d4ae_like ON public.celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: djcelery_periodictask_crontab_id_75609bab; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_periodictask_crontab_id_75609bab ON public.djcelery_periodictask USING btree (crontab_id);


--
-- Name: djcelery_periodictask_interval_id_b426ab02; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_periodictask_interval_id_b426ab02 ON public.djcelery_periodictask USING btree (interval_id);


--
-- Name: djcelery_periodictask_name_cb62cda9_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_periodictask_name_cb62cda9_like ON public.djcelery_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_hidden_c3905e57; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_hidden_c3905e57 ON public.djcelery_taskstate USING btree (hidden);


--
-- Name: djcelery_taskstate_name_8af9eded; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_name_8af9eded ON public.djcelery_taskstate USING btree (name);


--
-- Name: djcelery_taskstate_name_8af9eded_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_name_8af9eded_like ON public.djcelery_taskstate USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_state_53543be4; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_state_53543be4 ON public.djcelery_taskstate USING btree (state);


--
-- Name: djcelery_taskstate_state_53543be4_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_state_53543be4_like ON public.djcelery_taskstate USING btree (state varchar_pattern_ops);


--
-- Name: djcelery_taskstate_task_id_9d2efdb5_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_task_id_9d2efdb5_like ON public.djcelery_taskstate USING btree (task_id varchar_pattern_ops);


--
-- Name: djcelery_taskstate_tstamp_4c3f93a1; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_tstamp_4c3f93a1 ON public.djcelery_taskstate USING btree (tstamp);


--
-- Name: djcelery_taskstate_worker_id_f7f57a05; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_taskstate_worker_id_f7f57a05 ON public.djcelery_taskstate USING btree (worker_id);


--
-- Name: djcelery_workerstate_hostname_b31c7fab_like; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_workerstate_hostname_b31c7fab_like ON public.djcelery_workerstate USING btree (hostname varchar_pattern_ops);


--
-- Name: djcelery_workerstate_last_heartbeat_4539b544; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX djcelery_workerstate_last_heartbeat_4539b544 ON public.djcelery_workerstate USING btree (last_heartbeat);


--
-- Name: sender_snd_repeat_id_d294ec10; Type: INDEX; Schema: public; Owner: user_name
--

CREATE INDEX sender_snd_repeat_id_d294ec10 ON public.sender_snd USING btree (repeat_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictask djcelery_periodictas_crontab_id_75609bab_fk_djcelery_; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictas_crontab_id_75609bab_fk_djcelery_ FOREIGN KEY (crontab_id) REFERENCES public.djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictask djcelery_periodictas_interval_id_b426ab02_fk_djcelery_; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictas_interval_id_b426ab02_fk_djcelery_ FOREIGN KEY (interval_id) REFERENCES public.djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_taskstate djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_ FOREIGN KEY (worker_id) REFERENCES public.djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sender_snd sender_snd_repeat_id_d294ec10_fk_sender_repeat_type_id; Type: FK CONSTRAINT; Schema: public; Owner: user_name
--

ALTER TABLE ONLY public.sender_snd
    ADD CONSTRAINT sender_snd_repeat_id_d294ec10_fk_sender_repeat_type_id FOREIGN KEY (repeat_id) REFERENCES public.sender_repeat_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

