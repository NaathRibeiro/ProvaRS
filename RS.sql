--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-09-13 11:47:16 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 24626)
-- Name: BancodeDadosRS; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "BancodeDadosRS";


ALTER SCHEMA "BancodeDadosRS" OWNER TO postgres;

SET search_path = "BancodeDadosRS", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 24630)
-- Name: Professores; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE "Professores" (
    nome name,
    email name,
    turmas name,
    endereco name,
    rua name,
    telefone numeric,
    rg numeric,
    identidade numeric,
    idade numeric,
    carteira_trabalho name,
    data_nascimento numeric,
    materias name,
    tipo_sangue name
);


ALTER TABLE "Professores" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 24639)
-- Name: alunos; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE alunos (
    nome name,
    email name,
    telefone numeric,
    endereco name,
    rg numeric,
    identidade name,
    idade numeric,
    curso name,
    data_nascimento numeric,
    tipo_sangue name,
    notas numeric,
    matricula name
);


ALTER TABLE alunos OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 24633)
-- Name: cursos; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE cursos (
    disciplinas name,
    materias name
);


ALTER TABLE cursos OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 24636)
-- Name: disciplinas; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE disciplinas (
    materias name,
    conteudo name,
    notas_aluno numeric
);


ALTER TABLE disciplinas OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24645)
-- Name: endereco; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE endereco (
    rua name,
    cep numeric,
    uf numeric,
    bairro name,
    numero_casa numeric
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24660)
-- Name: materias; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE materias (
    informatica name,
    eletromecanica name,
    seguranca_trabalho name
);


ALTER TABLE materias OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 24651)
-- Name: telefone; Type: TABLE; Schema: BancodeDadosRS; Owner: postgres
--

CREATE TABLE telefone (
    ddd numeric,
    numero numeric
);


ALTER TABLE telefone OWNER TO postgres;

--
-- TOC entry 2204 (class 0 OID 24630)
-- Dependencies: 196
-- Data for Name: Professores; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY "Professores" (nome, email, turmas, endereco, rua, telefone, rg, identidade, idade, carteira_trabalho, data_nascimento, materias, tipo_sangue) FROM stdin;
\.


--
-- TOC entry 2207 (class 0 OID 24639)
-- Dependencies: 199
-- Data for Name: alunos; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY alunos (nome, email, telefone, endereco, rg, identidade, idade, curso, data_nascimento, tipo_sangue, notas, matricula) FROM stdin;
\.


--
-- TOC entry 2205 (class 0 OID 24633)
-- Dependencies: 197
-- Data for Name: cursos; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY cursos (disciplinas, materias) FROM stdin;
\.


--
-- TOC entry 2206 (class 0 OID 24636)
-- Dependencies: 198
-- Data for Name: disciplinas; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY disciplinas (materias, conteudo, notas_aluno) FROM stdin;
\.


--
-- TOC entry 2208 (class 0 OID 24645)
-- Dependencies: 200
-- Data for Name: endereco; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY endereco (rua, cep, uf, bairro, numero_casa) FROM stdin;
\.


--
-- TOC entry 2210 (class 0 OID 24660)
-- Dependencies: 202
-- Data for Name: materias; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY materias (informatica, eletromecanica, seguranca_trabalho) FROM stdin;
\.


--
-- TOC entry 2209 (class 0 OID 24651)
-- Dependencies: 201
-- Data for Name: telefone; Type: TABLE DATA; Schema: BancodeDadosRS; Owner: postgres
--

COPY telefone (ddd, numero) FROM stdin;
\.


-- Completed on 2017-09-13 11:47:16 BRT

--
-- PostgreSQL database dump complete
--

