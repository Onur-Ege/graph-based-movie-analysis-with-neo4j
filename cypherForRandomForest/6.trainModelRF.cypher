CALL gds.beta.pipeline.linkPrediction.train('movieGraph', {
  pipeline: 'movie-lp-pipeline',
  modelName: 'movie-model_rf',
  targetRelationshipType: 'RELATED_TO',
  relationshipTypes: ['CO_ACTED_WITH', 'CO_DIRECTED', 'RELATED_TO', 'SIMILAR_TO'],
  negativeRelationshipSamplingRatio: 1.0,
  validationFolds: 5,
  randomSeed: 42
})
YIELD modelInfo;