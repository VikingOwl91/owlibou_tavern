CREATE TRIGGER trg_requirement_check_merk_update
BEFORE UPDATE ON requirement
WHEN NEW.req_type='MERKMAL'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM merkmal WHERE id=NEW.req_id)
    THEN RAISE(ABORT,'requirement.req_id must reference merkmal.id for MERKMAL (UPDATE)')
  END;
END;

