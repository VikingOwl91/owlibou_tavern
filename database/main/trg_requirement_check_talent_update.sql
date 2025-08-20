CREATE TRIGGER trg_requirement_check_talent_update
BEFORE UPDATE ON requirement
WHEN NEW.req_type='TALENT_MIN'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM talent WHERE id=NEW.req_id)
    THEN RAISE(ABORT,'requirement.req_id must reference talent.id for TALENT_MIN (UPDATE)')
  END;
END;

