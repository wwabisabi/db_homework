-- Table: public.collection

-- DROP TABLE IF EXISTS public.collection;

CREATE TABLE IF NOT EXISTS public.collection
(
    collection_id integer NOT NULL DEFAULT nextval('collection_collection_id_seq'::regclass),
    name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    year integer NOT NULL,
    CONSTRAINT collection_pkey PRIMARY KEY (collection_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.collection
    OWNER to postgres;