create table tradition_has_deity
(
    tradition_id INTEGER not null
        references tradition
            on delete cascade,
    deity_id     INTEGER not null
        references deity
            on delete restrict,
    primary key (tradition_id, deity_id)
);

create index idx_trad_deity_deity
    on tradition_has_deity (deity_id);

