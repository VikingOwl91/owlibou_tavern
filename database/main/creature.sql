create table creature
(
    id                INTEGER
        primary key,
    optolith_key      TEXT
        unique,
    name              TEXT not null,
    typ               TEXT,
    groessenkategorie TEXT,
    attr_mu           INTEGER,
    attr_kl           INTEGER,
    attr_in           INTEGER,
    attr_ch           INTEGER,
    attr_ff           INTEGER,
    attr_ge           INTEGER,
    attr_ko           INTEGER,
    attr_kk           INTEGER,
    le_formel         TEXT,
    sk_wert           INTEGER,
    zk_wert           INTEGER,
    gs_wert           INTEGER,
    ini_formel        TEXT,
    rs_wert           INTEGER,
    beschreibung      TEXT,
    fluchtverhalten   TEXT
);

