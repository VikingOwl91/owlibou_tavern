create table culture_citation
(
    culture_id  INTEGER not null
        references culture
            on delete cascade,
    citation_id INTEGER not null
        references citation
            on delete cascade,
    primary key (culture_id, citation_id)
);

create index idx_culture_citation_cit
    on culture_citation (citation_id);

