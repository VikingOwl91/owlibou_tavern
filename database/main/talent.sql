create table talent
(
    id             INTEGER
        primary key,
    optolith_key   TEXT    not null
        unique,
    name           TEXT    not null,
    group_code     TEXT
        references talent_group
            on update cascade,
    probe_attr1_id INTEGER not null
        references attribute,
    probe_attr2_id INTEGER not null
        references attribute,
    probe_attr3_id INTEGER not null
        references attribute,
    steig_faktor   TEXT    not null,
    beschreibung   TEXT,
    check (steig_faktor IN ('A', 'B', 'C', 'D'))
);

create index idx_talent_group
    on talent (group_code);

