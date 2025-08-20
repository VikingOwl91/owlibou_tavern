create table profession_citation
(
    profession_id INTEGER not null
        references profession
            on delete cascade,
    citation_id   INTEGER not null
        references citation
            on delete cascade,
    primary key (profession_id, citation_id)
);

create index idx_profession_citation_cit
    on profession_citation (citation_id);

