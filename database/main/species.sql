create table species
(
    id           INTEGER
        primary key,
    optolith_key TEXT not null
        unique,
    name         TEXT not null,
    ap_kosten    INTEGER,
    le_grund     INTEGER,
    sk_grund     INTEGER,
    zk_grund     INTEGER,
    gs_grund     INTEGER
);

create index idx_species_name
    on species (name);

