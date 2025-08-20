create table species_attribute_mod
(
    species_id   INTEGER not null
        references species
            on delete cascade,
    attribute_id INTEGER not null
        references attribute
            on delete restrict,
    delta        INTEGER not null,
    primary key (species_id, attribute_id)
);

create index idx_species_attrmod_attr
    on species_attribute_mod (attribute_id);

