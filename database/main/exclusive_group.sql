create table exclusive_group
(
    id    INTEGER
        primary key,
    name  TEXT not null,
    scope TEXT not null,
    check (scope IN ('TRAIT', 'SF', 'TALENT', 'SPELL', 'LITURGY'))
);

