create table species_trait
(
    species_id  INTEGER not null
        references species
            on delete cascade,
    trait_id    INTEGER not null
        references trait
            on delete restrict,
    source      TEXT    not null,
    level       INTEGER,
    param_value TEXT,
    primary key (species_id, trait_id, source),
    check (source IN ('AUTOMATISCH', 'TYPISCH', 'EMPFOHLEN'))
);

create index idx_species_trait_trait
    on species_trait (trait_id);

create index idx_species_trait_trait2
    on species_trait (trait_id);

