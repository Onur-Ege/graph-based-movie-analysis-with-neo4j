CALL gds.beta.pipeline.linkPrediction.configureSplit('mlp-lp-pipeline', {
  testFraction: 0.25,
  trainFraction: 0.6,
  validationFolds: 3
}) YIELD splitConfig;