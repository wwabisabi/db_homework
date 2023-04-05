-- Table: public.track_collection

-- DROP TABLE IF EXISTS public.track_collection;

CREATE TABLE IF NOT EXISTS public.track_collection
(
    track_collection_id integer NOT NULL DEFAULT nextval('track_collection_track_collection_id_seq'::regclass),
    track_id integer NOT NULL,
    collection_id integer NOT NULL,
    CONSTRAINT track_collection_pkey PRIMARY KEY (track_collection_id),
    CONSTRAINT track_collection_collection_id_fkey FOREIGN KEY (collection_id)
        REFERENCES public.collection (collection_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT track_collection_track_id_fkey FOREIGN KEY (track_id)
        REFERENCES public.track (track_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.track_collection
    OWNER to postgres;