create table social_status
(
    id           INTEGER
        primary key,
    name         TEXT    not null
        unique,
    ap_kosten    INTEGER not null,
    beschreibung TEXT
);

