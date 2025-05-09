MATCH (m:Movie {title: "Toy Story"})-[r:RECOMMENDS]->(rec:Movie)
RETURN m,rec
