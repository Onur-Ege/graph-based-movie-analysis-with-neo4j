CALL gds.beta.pipeline.linkPrediction.train('movieGraph', {
  pipeline: 'mlp-lp-pipeline',
  modelName: 'mlp-lp-model',
  targetRelationshipType: 'RELATED_TO',
  randomSeed: 42
}) YIELD modelInfo, modelSelectionStats;