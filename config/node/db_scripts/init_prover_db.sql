CREATE DATABASE prover_db;
\connect prover_db;

CREATE SCHEMA state;

CREATE TABLE state.nodes (hash BYTEA PRIMARY KEY, data BYTEA NOT NULL);
CREATE TABLE state.program (hash BYTEA PRIMARY KEY, data BYTEA NOT NULL);

CREATE USER runicbuild with password 'runicbuild123@';
ALTER DATABASE prover_db OWNER TO runicbuild;
ALTER SCHEMA state OWNER TO runicbuild;
ALTER SCHEMA public OWNER TO runicbuild;
ALTER TABLE state.nodes OWNER TO runicbuild;
ALTER TABLE state.program OWNER TO runicbuild;
ALTER USER runicbuild SET SEARCH_PATH=state;
