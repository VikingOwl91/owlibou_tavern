create table shield
(
    id              INTEGER
        primary key,
    item_id         INTEGER not null
        unique
        references item
            on delete cascade,
    kampftechnik_id INTEGER not null
        references kampftechnik
            on delete restrict,
    at_mod          INTEGER default 0,
    pa_mod          INTEGER default 0,
    zusatz_rs       INTEGER default 0,
    zusatz_be       REAL    default 0
);

