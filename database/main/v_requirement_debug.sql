CREATE VIEW v_requirement_debug AS
SELECT
  owner_kind,
  owner_id,
  group_no,
  CASE negate WHEN 1 THEN 'NOT ' ELSE '' END || req_type AS req_op,
  req_id,
  req_level,
  req_optokey,
  note
FROM requirement
ORDER BY owner_kind, owner_id, group_no, negate DESC, req_type, req_id;

