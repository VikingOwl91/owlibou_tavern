create table profession
(
    id           INTEGER
        primary key,
    optolith_key TEXT not null
        unique,
    name         TEXT not null,
    typ          TEXT,
    beschreibung TEXT
);

create index idx_profession_name
    on profession (name);

