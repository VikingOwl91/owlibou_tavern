CREATE TRIGGER trg_trait_conflict_order
BEFORE INSERT ON trait_conflict
WHEN NEW.trait_id > NEW.incompatible_trait_id
BEGIN
  SELECT RAISE(ABORT, 'Insert smaller id first (trait_id < incompatible_trait_id)');
END;

