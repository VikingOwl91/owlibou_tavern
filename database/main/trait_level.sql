create table trait_level
(
    trait_id INTEGER not null
        references trait
            on delete cascade,
    level    INTEGER not null,
    ap_cost  INTEGER,
    label    TEXT,
    note     TEXT,
    primary key (trait_id, level)
);

