create table kampftechnik
(
    id             INTEGER
        primary key,
    optolith_key   TEXT              not null
        unique,
    name           TEXT              not null,
    grundwert      INTEGER default 6 not null,
    probe_attr1_id INTEGER
        references attribute,
    probe_attr2_id INTEGER
        references attribute,
    probe_attr3_id INTEGER
        references attribute,
    beschreibung   TEXT
);

