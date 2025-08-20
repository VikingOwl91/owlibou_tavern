create table spell_merkmal
(
    spell_id   INTEGER not null
        references spell
            on delete cascade,
    merkmal_id INTEGER not null
        references merkmal
            on delete restrict,
    primary key (spell_id, merkmal_id)
);

create index idx_spell_merkmal_m
    on spell_merkmal (merkmal_id);

