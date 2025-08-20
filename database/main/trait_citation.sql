create table trait_citation
(
    trait_id    INTEGER not null
        references trait
            on delete cascade,
    citation_id INTEGER not null
        references citation
            on delete cascade,
    primary key (trait_id, citation_id)
);

create index idx_trait_citation_cit
    on trait_citation (citation_id);

