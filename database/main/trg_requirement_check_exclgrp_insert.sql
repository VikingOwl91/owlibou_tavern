CREATE TRIGGER trg_requirement_check_exclgrp_insert
BEFORE INSERT ON requirement
WHEN NEW.req_type='EXCLUSIVE_GROUP'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM exclusive_group WHERE id=NEW.req_id)
    THEN RAISE(ABORT,'requirement.req_id must reference exclusive_group.id for EXCLUSIVE_GROUP')
  END;
END;

