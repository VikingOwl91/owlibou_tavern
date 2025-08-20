create table trait
(
    id           INTEGER
        primary key,
    optolith_key TEXT                    not null
        unique,
    name         TEXT                    not null,
    kind         TEXT                    not null,
    is_leveled   INTEGER default 0       not null,
    level_min    INTEGER,
    level_max    INTEGER,
    level_step   INTEGER,
    ap_cost_mode TEXT    default 'FIXED' not null,
    ap_wert      INTEGER,
    ap_per_level INTEGER,
    ap_formula   TEXT,
    beschreibung TEXT,
    check (ap_cost_mode IN ('FIXED', 'PER_LEVEL', 'TABLE', 'FORMULA')),
    check (is_leveled IN (0, 1)),
    check (kind IN ('VORTEIL', 'NACHTEIL'))
);

create index idx_trait_kind
    on trait (kind);

