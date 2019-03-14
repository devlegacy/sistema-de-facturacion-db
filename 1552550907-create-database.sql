CREATE USER facturacion PASSWORD 'facturacion';

CREATE TABLESPACE ts_facturation_system OWNER facturacion LOCATION E'D:\\Proyectos\\Cursos\\edteam\\bases de datos\\curso-bd\\tbs';

CREATE DATABASE facturacion OWNER facturacion TABLESPACE ts_facturation_system;

psql -U facturacion -d facturacion

\c facturacion


CREATE TABLE profiles(
  id SMALLSERIAL,
  profile VARCHAR(20) NOT NULL,
  CONSTRAINT pk_profiles_id PRIMARY KEY (id),
  CONSTRAINT uk_profiles_profile UNIQUE (profile)
);

CREATE TABLE users(
  id SMALLSERIAL,
  user VARCHAR(20) NOT NULL,
  name VARCHAR(100) NOT NULL,
  password VARCHAR(32) NOT NULL,
  profile_id SMALLINT,
  CONSTRAINT pk_users_id PRIMARY KEY (id),
  CONSTRAINT uk_users_user UNIQUE (user),
  CONSTRAINT fk_users_profile_id_to_profiles_id FOREIGN KEY (profile_id)
    REFERENCES profiles (id) ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE third_parties(
  id SMALLSERIAL,
  # Si no se van a realizar calculos númericos, guardar identificaciones como VARCHAR
  identification VARCHAR(20) NOT NULL,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(100) NOT NULL,
  telephone VARCHAR(20) NOT NULL,
  CONSTRAINT pk_third_parties_id PRIMARY KEY (id),
  CONSTRAINT uk_third_parties_identification UNIQUE(identification)
);


CREATE TABLE products(
  id SMALLSERIAL,
  name VARCHAR(20) NOT NULL,
  quantity SMALLINT,
  price SMALLINT,
  user_id SMALLINT,

  CONSTRAINT
  CONSTRAINT
  CONSTRAINT
  CONSTRAINT
  CONSTRAINT
);

-- profiles
-- users
-- products
-- purchases
-- sales
-- third parties
