create table species_citation
(
    species_id  INTEGER not null
        references species
            on delete cascade,
    citation_id INTEGER not null
        references citation
            on delete cascade,
    primary key (species_id, citation_id)
);

create index idx_species_citation_cit
    on species_citation (citation_id);

