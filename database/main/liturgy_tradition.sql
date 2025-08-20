create table liturgy_tradition
(
    liturgy_id   INTEGER not null
        references liturgy
            on delete cascade,
    tradition_id INTEGER not null
        references tradition
            on delete restrict,
    primary key (liturgy_id, tradition_id)
);

create index idx_liturgy_tradition_t
    on liturgy_tradition (tradition_id);

