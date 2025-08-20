create table deity
(
    id                 INTEGER
        primary key,
    name               TEXT not null
        unique,
    aspekte            TEXT,
    herrschaftsbereich TEXT,
    heiliges_tier      TEXT
);

