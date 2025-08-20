create table liturgy_citation
(
    liturgy_id  INTEGER not null
        references liturgy
            on delete cascade,
    citation_id INTEGER not null
        references citation
            on delete cascade,
    primary key (liturgy_id, citation_id)
);

create index idx_liturgy_citation_cit
    on liturgy_citation (citation_id);

