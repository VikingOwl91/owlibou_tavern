CREATE VIEW v_species_auto_traits AS
SELECT s.id AS species_id, s.name AS species,
       t.id AS trait_id, t.name AS trait, st.level, st.param_value
FROM species s
         JOIN species_trait st ON st.species_id = s.id AND st.source = 'AUTOMATISCH'
         JOIN trait t ON t.id = st.trait_id;

