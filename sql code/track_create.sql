-- Table: public.track

-- DROP TABLE IF EXISTS public.track;

CREATE TABLE IF NOT EXISTS public.track
(
    track_id integer NOT NULL DEFAULT nextval('track_track_id_seq'::regclass),
    album_id integer,
    name character varying(40) COLLATE pg_catalog."default" NOT NULL,
    duration_sec integer NOT NULL,
    CONSTRAINT track_pkey PRIMARY KEY (track_id),
    CONSTRAINT track_album_id_fkey FOREIGN KEY (album_id)
        REFERENCES public.album (album_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.track
    OWNER to postgres;