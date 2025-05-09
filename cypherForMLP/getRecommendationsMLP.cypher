MATCH (m:Movie {title: "Toy Story"})-[r:RECOMMENDED_MLP]->(rec:Movie)
RETURN m,rec
