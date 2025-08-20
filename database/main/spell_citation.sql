create table spell_citation
(
    spell_id    INTEGER not null
        references spell
            on delete cascade,
    citation_id INTEGER not null
        references citation
            on delete cascade,
    primary key (spell_id, citation_id)
);

create index idx_spell_citation_cit
    on spell_citation (citation_id);

