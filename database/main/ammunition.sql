create table ammunition
(
    id                        INTEGER
        primary key,
    item_id                   INTEGER not null
        unique
        references item
            on delete cascade,
    passend_fuer_fk_waffe_typ TEXT
);

