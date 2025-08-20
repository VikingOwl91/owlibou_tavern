CREATE TRIGGER trg_requirement_check_attr_insert
BEFORE INSERT ON requirement
WHEN NEW.req_type = 'ATTR_MIN'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM attribute WHERE id = NEW.req_id)
    THEN RAISE(ABORT, 'requirement.req_id must reference attribute.id for ATTR_MIN')
  END;
END;

