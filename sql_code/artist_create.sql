-- Table: public.artist

-- DROP TABLE IF EXISTS public.artist;

CREATE TABLE IF NOT EXISTS public.artist
(
    artist_id integer NOT NULL DEFAULT nextval('artist_artist_id_seq'::regclass),
    name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT artist_pkey PRIMARY KEY (artist_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.artist
    OWNER to postgres;