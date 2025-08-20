create table weapon_has_property
(
    weapon_id   INTEGER not null
        references weapon
            on delete cascade,
    property_id INTEGER not null
        references weapon_property
            on delete restrict,
    primary key (weapon_id, property_id)
);

create index idx_weapon_has_property_prop
    on weapon_has_property (property_id);

