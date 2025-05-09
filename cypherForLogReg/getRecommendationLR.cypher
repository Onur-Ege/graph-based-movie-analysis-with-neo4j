MATCH (m:Movie {title: "Toy Story"})-[r:RECOMMENDS_LR]->(rec:Movie)
RETURN m,rec
