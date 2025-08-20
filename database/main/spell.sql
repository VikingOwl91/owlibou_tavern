create table spell
(
    id             INTEGER
        primary key,
    optolith_key   TEXT    not null
        unique,
    name           TEXT    not null,
    probe_attr1_id INTEGER not null
        references attribute,
    probe_attr2_id INTEGER not null
        references attribute,
    probe_attr3_id INTEGER not null
        references attribute,
    wirkung        TEXT,
    zauberdauer    TEXT,
    asp_kosten     TEXT,
    reichweite     TEXT,
    wirkungsdauer  TEXT,
    steig_faktor   TEXT    not null,
    check (steig_faktor IN ('A', 'B', 'C', 'D'))
);

