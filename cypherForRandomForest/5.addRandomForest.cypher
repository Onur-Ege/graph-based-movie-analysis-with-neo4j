CALL gds.beta.pipeline.linkPrediction.addRandomForest('movie-lp-pipeline', {
  maxDepth: 10,
  minLeafSize: 5,
  minSplitSize: 10});
