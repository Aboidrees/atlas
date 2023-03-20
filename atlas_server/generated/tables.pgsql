--
-- Class MapRecord as table maps_records
--

CREATE TABLE "maps_records" (
  "id" serial,
  "title" text NOT NULL,
  "barcode" text NOT NULL,
  "date" timestamp without time zone NOT NULL,
  "num" integer NOT NULL,
  "scale" text NOT NULL,
  "destination" text NOT NULL,
  "documents" json NOT NULL,
  "notes" text NOT NULL
);

ALTER TABLE ONLY "maps_records"
  ADD CONSTRAINT maps_records_pkey PRIMARY KEY (id);


