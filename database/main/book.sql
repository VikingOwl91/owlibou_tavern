create table book
(
    id           INTEGER
        primary key,
    code         TEXT not null
        unique,
    title        TEXT not null,
    subtitle     TEXT,
    series       TEXT,
    volume       TEXT,
    edition      TEXT,
    isbn13       TEXT
        unique,
    publisher    TEXT,
    language     TEXT,
    published_at TEXT,
    url          TEXT,
    license      TEXT
);

