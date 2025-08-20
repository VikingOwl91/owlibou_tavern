create table profession_special_ability
(
    profession_id      INTEGER not null
        references profession
            on delete cascade,
    special_ability_id INTEGER not null
        references special_ability
            on delete restrict,
    primary key (profession_id, special_ability_id)
);

create index idx_profession_sa_sa
    on profession_special_ability (special_ability_id);

