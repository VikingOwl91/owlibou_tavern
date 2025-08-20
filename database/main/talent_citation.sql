create table talent_citation
(
    talent_id   INTEGER not null
        references talent
            on delete cascade,
    citation_id INTEGER not null
        references citation
            on delete cascade,
    primary key (talent_id, citation_id)
);

create index idx_talent_citation_cit
    on talent_citation (citation_id);

