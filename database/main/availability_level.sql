create table availability_level
(
    id           INTEGER
        primary key,
    stufe        INTEGER not null
        unique,
    beschreibung TEXT
);

