create table status_effect
(
    id                 INTEGER
        primary key,
    name               TEXT not null
        unique,
    max_stufen         INTEGER,
    regel_beschreibung TEXT
);

