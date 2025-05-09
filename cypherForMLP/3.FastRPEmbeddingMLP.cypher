CALL gds.beta.pipeline.linkPrediction.addNodeProperty('mlp-lp-pipeline', 'fastRP', {
  mutateProperty: 'embedding',
  embeddingDimension: 256,
  randomSeed: 42
}) YIELD nodePropertySteps;