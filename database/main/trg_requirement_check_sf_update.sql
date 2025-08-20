CREATE TRIGGER trg_requirement_check_sf_update
BEFORE UPDATE ON requirement
WHEN NEW.req_type='SF'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM special_ability WHERE id=NEW.req_id)
    THEN RAISE(ABORT,'requirement.req_id must reference special_ability.id for SF (UPDATE)')
  END;
END;

