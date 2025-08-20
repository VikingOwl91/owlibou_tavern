create table special_ability_citation
(
    special_ability_id INTEGER not null
        references special_ability
            on delete cascade,
    citation_id        INTEGER not null
        references citation
            on delete cascade,
    primary key (special_ability_id, citation_id)
);

create index idx_special_ability_citation_cit
    on special_ability_citation (citation_id);

