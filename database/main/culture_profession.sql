create table culture_profession
(
    culture_id    INTEGER not null
        references culture
            on delete cascade,
    profession_id INTEGER not null
        references profession
            on delete restrict,
    primary key (culture_id, profession_id)
);

create index idx_culture_profession_prof
    on culture_profession (profession_id);

