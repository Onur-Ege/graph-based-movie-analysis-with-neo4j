CALL gds.alpha.pipeline.linkPrediction.addMLP('mlp-lp-pipeline', {
  hiddenLayerSizes: [64, 32],
  learningRate: 0.01,
  maxEpochs: 100,
  patience: 5
}) YIELD parameterSpace;
