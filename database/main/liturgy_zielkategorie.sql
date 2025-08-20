create table liturgy_zielkategorie
(
    liturgy_id       INTEGER not null
        references liturgy
            on delete cascade,
    zielkategorie_id INTEGER not null
        references zielkategorie
            on delete restrict,
    primary key (liturgy_id, zielkategorie_id)
);

create index idx_liturgy_zielkat_z
    on liturgy_zielkategorie (zielkategorie_id);

