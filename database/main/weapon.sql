create table weapon
(
    id                INTEGER
        primary key,
    item_id           INTEGER not null
        unique
        references item
            on delete cascade,
    kampftechnik_id   INTEGER not null
        references kampftechnik
            on delete restrict,
    schaden_tp_formel TEXT    not null,
    tp_kk_schwelle    INTEGER,
    tp_kk_schritt     INTEGER,
    at_mod            INTEGER default 0,
    pa_mod            INTEGER default 0
);

