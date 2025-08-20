create table special_ability
(
    id                  INTEGER
        primary key,
    optolith_key        TEXT              not null
        unique,
    name                TEXT              not null,
    type_code           TEXT
        references sa_type
            on update cascade,
    ap_kosten           INTEGER,
    beschreibung        TEXT,
    benoetigt_parameter BOOLEAN default 0 not null
);

