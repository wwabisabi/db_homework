-- Table: public.artist_genre

-- DROP TABLE IF EXISTS public.artist_genre;

CREATE TABLE IF NOT EXISTS public.artist_genre
(
    artist_genre_id integer NOT NULL DEFAULT nextval('artist_genre_artist_genre_id_seq'::regclass),
    artist_id integer NOT NULL,
    genre_id integer NOT NULL,
    CONSTRAINT artist_genre_pkey PRIMARY KEY (artist_genre_id),
    CONSTRAINT artist_genre_artist_id_fkey FOREIGN KEY (artist_id)
        REFERENCES public.artist (artist_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT artist_genre_genre_id_fkey FOREIGN KEY (genre_id)
        REFERENCES public.genre (genre_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.artist_genre
    OWNER to postgres;