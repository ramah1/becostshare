-- Database: costshare

-- DROP DATABASE costshare;

CREATE DATABASE costshare
  WITH OWNER = "Michael"
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'C'
       LC_CTYPE = 'UTF-8'
       CONNECTION LIMIT = -1;

-- Schema: costshare

-- DROP SCHEMA costshare;

CREATE SCHEMA costshare
  AUTHORIZATION "Michael";

-- Table: costshare."Group"

-- DROP TABLE costshare."Group";

CREATE TABLE costshare."Group"
(
  id serial NOT NULL,
  name text NOT NULL,
  description text NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE costshare."Group"
  OWNER TO "Michael";

-- Table: costshare."User"

-- DROP TABLE costshare."User";

CREATE TABLE costshare."User"
(
  id serial NOT NULL,
  username text NOT NULL,
  email text NOT NULL,
  password text NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE costshare."User"
  OWNER TO "Michael";


-- INSERT OBJECT
INSERT INTO costshare."User"(username, email, password)
    VALUES ('testuser', 'testuser@gibb.ch', 'testuser');