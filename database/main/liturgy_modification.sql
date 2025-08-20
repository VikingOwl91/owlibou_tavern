create table liturgy_modification
(
    id                  INTEGER
        primary key,
    liturgy_id          INTEGER not null
        references liturgy
            on delete cascade,
    name                TEXT    not null,
    wirkung             TEXT    not null,
    voraussetzung       TEXT,
    kosten_modifikation TEXT,
    unique (liturgy_id, name)
);

create index idx_liturgy_mod_liturgy
    on liturgy_modification (liturgy_id);

