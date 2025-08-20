create table spell_zielkategorie
(
    spell_id         INTEGER not null
        references spell
            on delete cascade,
    zielkategorie_id INTEGER not null
        references zielkategorie
            on delete restrict,
    primary key (spell_id, zielkategorie_id)
);

create index idx_spell_zielkat_z
    on spell_zielkategorie (zielkategorie_id);

