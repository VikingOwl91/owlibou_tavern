CREATE TRIGGER trg_requirement_check_species_update
BEFORE UPDATE ON requirement
WHEN NEW.req_type='SPECIES'
BEGIN
  SELECT CASE
    WHEN NEW.req_id IS NULL OR NOT EXISTS (SELECT 1 FROM species WHERE id=NEW.req_id)
    THEN RAISE(ABORT,'requirement.req_id must reference species.id for SPECIES (UPDATE)')
  END;
END;

