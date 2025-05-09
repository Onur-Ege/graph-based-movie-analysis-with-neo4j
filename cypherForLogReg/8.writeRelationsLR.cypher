CALL apoc.periodic.iterate(
  "
  CALL gds.graph.relationships.stream('movieGraph')
  YIELD sourceNodeId, targetNodeId, relationshipType
  WHERE relationshipType = 'RECOMMENDS_LR'
  RETURN sourceNodeId, targetNodeId
  ",
  "
  MATCH (m1:Movie), (m2:Movie)
  WHERE id(m1) = sourceNodeId AND id(m2) = targetNodeId
  MERGE (m1)-[:RECOMMENDS_LR]->(m2)
  ",
  {batchSize: 10000, parallel: false}
);
