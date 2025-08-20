CREATE TRIGGER trg_requirement_check_trad_insert
BEFORE INSERT ON requirement
WHEN NEW.req_type='TRADITION'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM tradition WHERE id=NEW.req_id)
    THEN RAISE(ABORT,'requirement.req_id must reference tradition.id for TRADITION')
  END;
END;

