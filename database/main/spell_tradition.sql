create table spell_tradition
(
    spell_id     INTEGER not null
        references spell
            on delete cascade,
    tradition_id INTEGER not null
        references tradition
            on delete restrict,
    primary key (spell_id, tradition_id)
);

create index idx_spell_tradition_t
    on spell_tradition (tradition_id);

