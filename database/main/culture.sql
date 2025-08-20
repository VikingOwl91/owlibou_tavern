create table culture
(
    id           INTEGER
        primary key,
    optolith_key TEXT not null
        unique,
    name         TEXT not null
);

create index idx_culture_name
    on culture (name);

