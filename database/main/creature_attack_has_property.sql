create table creature_attack_has_property
(
    attack_id   INTEGER not null
        references creature_attack
            on delete cascade,
    property_id INTEGER not null
        references creature_attack_property
            on delete restrict,
    primary key (attack_id, property_id)
);

create index idx_creature_attack_has_prop_prop
    on creature_attack_has_property (property_id);

