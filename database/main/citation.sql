create table citation
(
    id         INTEGER
        primary key,
    book_id    INTEGER not null
        references book
            on delete cascade,
    page_start INTEGER not null,
    page_end   INTEGER,
    section    TEXT,
    anchor     TEXT,
    note       TEXT
);

create index idx_citation_book
    on citation (book_id, page_start);

