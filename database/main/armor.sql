create table armor
(
    id              INTEGER
        primary key,
    item_id         INTEGER not null
        unique
        references item
            on delete cascade,
    ruestungsschutz INTEGER not null,
    behaelinderung  REAL    not null,
    zonen           TEXT
);

