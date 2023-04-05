-- Table: public.album

-- DROP TABLE IF EXISTS public.album;

CREATE TABLE IF NOT EXISTS public.album
(
    album_id integer NOT NULL DEFAULT nextval('album_genre_id_seq'::regclass),
    name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    year integer,
    CONSTRAINT album_pkey PRIMARY KEY (album_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.album
    OWNER to postgres;