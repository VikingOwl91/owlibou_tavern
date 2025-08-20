create table crafting_recipe
(
    id                     INTEGER
        primary key,
    result_item_id         INTEGER not null
        references item,
    required_talent_id     INTEGER not null
        references talent,
    required_fw            INTEGER not null,
    zeitaufwand_in_ze      TEXT,
    benoetigte_materialien TEXT,
    anmerkung              TEXT
);

create index idx_crafting_recipe_item
    on crafting_recipe (result_item_id);

create index idx_crafting_recipe_talent
    on crafting_recipe (required_talent_id);

