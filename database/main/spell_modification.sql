create table spell_modification
(
    id                  INTEGER
        primary key,
    spell_id            INTEGER not null
        references spell
            on delete cascade,
    name                TEXT    not null,
    wirkung             TEXT    not null,
    voraussetzung       TEXT,
    kosten_modifikation TEXT,
    unique (spell_id, name)
);

create index idx_spell_mod_spell
    on spell_modification (spell_id);

