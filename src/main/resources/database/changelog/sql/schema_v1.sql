CREATE TABLE LOGINS(
   ID BIGINT PRIMARY KEY NOT NULL,
   username varchar NOT NULL,
   password varchar NOT NULL
   PRIMARY KEY( one or more columns )
);

CREATE SEQUENCE LOGINS_SEQ increment by 1 start 1 cache 1 owned BY LOGINS.ID;