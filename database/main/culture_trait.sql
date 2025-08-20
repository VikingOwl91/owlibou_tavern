create table culture_trait
(
    culture_id  INTEGER not null
        references culture
            on delete cascade,
    trait_id    INTEGER not null
        references trait
            on delete restrict,
    tag         TEXT    not null,
    level       INTEGER,
    param_value TEXT,
    primary key (culture_id, trait_id, tag),
    check (tag IN ('TYPISCH', 'EMPFOHLEN'))
);

create index idx_culture_trait_trait
    on culture_trait (trait_id);

