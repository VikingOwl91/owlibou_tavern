create table item
(
    id               INTEGER
        primary key,
    name             TEXT not null,
    typ              TEXT not null,
    gewicht_in_unzen INTEGER default 0,
    preis_in_heller  INTEGER default 0,
    beschreibung     TEXT,
    verfuegbarkeit   TEXT,
    availability_id  INTEGER
        references availability_level,
    check (typ IN ('WAFFE', 'RÜSTUNG', 'SCHILD', 'FERNKAMPFWAFFE', 'MUNITION', 'ALLGEMEIN', 'ALCHEMIKA'))
);

