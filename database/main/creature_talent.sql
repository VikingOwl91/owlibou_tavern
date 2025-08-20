create table creature_talent
(
    creature_id     INTEGER not null
        references creature
            on delete cascade,
    talent_id       INTEGER not null
        references talent
            on delete restrict,
    fertigkeitswert INTEGER not null,
    primary key (creature_id, talent_id)
);

create index idx_creature_talent_talent
    on creature_talent (talent_id);

