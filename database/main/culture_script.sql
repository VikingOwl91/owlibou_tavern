create table culture_script
(
    culture_id INTEGER not null
        references culture
            on delete cascade,
    script_id  INTEGER not null
        references script
            on delete restrict,
    primary key (culture_id, script_id)
);

create index idx_culture_script_script
    on culture_script (script_id);

