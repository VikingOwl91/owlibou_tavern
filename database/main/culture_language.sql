create table culture_language
(
    culture_id  INTEGER not null
        references culture
            on delete cascade,
    language_id INTEGER not null
        references language
            on delete restrict,
    level       TEXT,
    primary key (culture_id, language_id)
);

create index idx_culture_language_lang
    on culture_language (language_id);

