create table language
(
    id   INTEGER
        primary key,
    code TEXT
        unique,
    name TEXT not null
        unique
);

