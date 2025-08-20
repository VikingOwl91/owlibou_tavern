create table trait_conflict
(
    trait_id              INTEGER not null
        references trait
            on delete cascade,
    incompatible_trait_id INTEGER not null
        references trait
            on delete cascade,
    primary key (trait_id, incompatible_trait_id)
);

