create table creature_attack_property
(
    id           INTEGER
        primary key,
    name         TEXT not null
        unique,
    beschreibung TEXT
);

