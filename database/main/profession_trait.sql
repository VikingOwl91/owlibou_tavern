create table profession_trait
(
    profession_id INTEGER not null
        references profession
            on delete cascade,
    trait_id      INTEGER not null
        references trait
            on delete restrict,
    level         INTEGER,
    param_value   TEXT,
    primary key (profession_id, trait_id)
);

create index idx_profession_trait_trait
    on profession_trait (trait_id);

