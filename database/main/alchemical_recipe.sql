create table alchemical_recipe
(
    id                     INTEGER
        primary key,
    name                   TEXT    not null
        unique,
    result_item_id         INTEGER
        references item,
    herstellungs_talent_id INTEGER not null
        references talent,
    herstellungs_probe_mod INTEGER default 0,
    labor_schwierigkeit    TEXT,
    rezept_kosten_heller   INTEGER,
    wirkungsbeschreibung   TEXT,
    wirkung_strukturiert   TEXT
);

