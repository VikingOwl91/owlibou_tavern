create table script
(
    id   INTEGER
        primary key,
    code TEXT
        unique,
    name TEXT not null
        unique
);

