create table service_cost
(
    id              INTEGER
        primary key,
    name            TEXT not null,
    kategorie       TEXT,
    preis_in_heller INTEGER,
    preis_bemerkung TEXT,
    beschreibung    TEXT
);

