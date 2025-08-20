create table ranged_weapon
(
    id                   INTEGER
        primary key,
    item_id              INTEGER not null
        unique
        references item
            on delete cascade,
    kampftechnik_id      INTEGER not null
        references kampftechnik
            on delete restrict,
    schaden_tp_formel    TEXT    not null,
    ladezeit_in_aktionen INTEGER,
    reichweite_nah       INTEGER,
    reichweite_mittel    INTEGER,
    reichweite_fern      INTEGER
);

