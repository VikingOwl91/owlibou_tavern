create table exclusive_group_member
(
    group_id INTEGER not null
        references exclusive_group
            on delete cascade,
    owner_id INTEGER not null,
    primary key (group_id, owner_id)
);

