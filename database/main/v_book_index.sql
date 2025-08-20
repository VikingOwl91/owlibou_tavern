CREATE VIEW v_book_index AS
SELECT 'TRAIT' AS kind, t.name, b.code, c.page_start, c.page_end
FROM trait t JOIN trait_citation tc ON tc.trait_id=t.id
             JOIN citation c ON c.id=tc.citation_id JOIN book b ON b.id=c.book_id
UNION ALL
SELECT 'SPECIES', s.name, b.code, c.page_start, c.page_end
FROM species s JOIN species_citation sc ON sc.species_id=s.id
               JOIN citation c ON c.id=sc.citation_id JOIN book b ON b.id=c.book_id
UNION ALL
SELECT 'CULTURE', cu.name, b.code, c.page_start, c.page_end
FROM culture cu JOIN culture_citation cc ON cc.culture_id=cu.id
                JOIN citation c ON c.id=cc.citation_id JOIN book b ON b.id=c.book_id
UNION ALL
SELECT 'PROFESSION', p.name, b.code, c.page_start, c.page_end
FROM profession p JOIN profession_citation pc ON pc.profession_id=p.id
                  JOIN citation c ON c.id=pc.citation_id JOIN book b ON b.id=c.book_id;

