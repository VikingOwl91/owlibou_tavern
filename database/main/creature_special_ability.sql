create table creature_special_ability
(
    creature_id        INTEGER not null
        references creature
            on delete cascade,
    special_ability_id INTEGER not null
        references special_ability
            on delete restrict,
    primary key (creature_id, special_ability_id)
);

create index idx_creature_sa_sa
    on creature_special_ability (special_ability_id);

