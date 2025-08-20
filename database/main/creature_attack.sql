create table creature_attack
(
    id            INTEGER
        primary key,
    creature_id   INTEGER not null
        references creature
            on delete cascade,
    name          TEXT    not null,
    at_wert       INTEGER,
    pa_wert       INTEGER,
    tp_formel     TEXT,
    reichweite    TEXT,
    eigenschaften TEXT
);

