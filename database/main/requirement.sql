create table requirement
(
    id          INTEGER
        primary key,
    owner_kind  TEXT              not null,
    owner_id    INTEGER           not null,
    group_no    INTEGER default 1 not null,
    negate      INTEGER default 0 not null,
    req_type    TEXT              not null,
    req_id      INTEGER,
    req_level   INTEGER,
    req_optokey TEXT,
    note        TEXT,
    check (negate IN (0, 1)),
    check (owner_kind IN (
                          'TRAIT', 'SF', 'TALENT', 'SPELL', 'LITURGY', 'PROFESSION', 'SPECIES', 'CULTURE'
        )),
    check (req_type IN (
                        'TRAIT', 'TRAIT_LEVEL_MIN',
                        'ATTR_MIN', 'TALENT_MIN', 'SF',
                        'SPECIES', 'CULTURE', 'TRADITION', 'MERKMAL',
                        'EXCLUSIVE_GROUP'
        ))
);

create index idx_requirement_owner
    on requirement (owner_kind, owner_id, group_no);

create index idx_requirement_ref
    on requirement (req_type, req_id);

