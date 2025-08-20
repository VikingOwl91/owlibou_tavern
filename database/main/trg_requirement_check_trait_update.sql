CREATE TRIGGER trg_requirement_check_trait_update
BEFORE UPDATE ON requirement
WHEN NEW.req_type IN ('TRAIT','TRAIT_LEVEL_MIN')
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM trait WHERE id = NEW.req_id)
    THEN RAISE(ABORT, 'requirement.req_id must reference trait.id for TRAIT/TRAIT_LEVEL_MIN (UPDATE)')
  END;
END;

