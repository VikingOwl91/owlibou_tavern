create table poison_disease
(
    id                   INTEGER
        primary key,
    name                 TEXT not null
        unique,
    typ                  TEXT not null,
    art                  TEXT,
    resistenz_probe_attr TEXT not null,
    stufe                INTEGER,
    wirkungsbeginn       TEXT,
    schaden_wirkung      TEXT,
    dauer                TEXT,
    check (typ IN ('GIFT', 'KRANKHEIT'))
);

