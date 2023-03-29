-- Table: public.artist_album

-- DROP TABLE IF EXISTS public.artist_album;

CREATE TABLE IF NOT EXISTS public.artist_album
(
    artist_album_id integer NOT NULL DEFAULT nextval('artist_album_artist_album_id_seq'::regclass),
    artist_id integer NOT NULL,
    album_id integer NOT NULL,
    CONSTRAINT artist_album_pkey PRIMARY KEY (artist_album_id),
    CONSTRAINT artist_album_album_id_fkey FOREIGN KEY (album_id)
        REFERENCES public.album (album_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT artist_album_artist_id_fkey FOREIGN KEY (artist_id)
        REFERENCES public.artist (artist_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.artist_album
    OWNER to postgres;