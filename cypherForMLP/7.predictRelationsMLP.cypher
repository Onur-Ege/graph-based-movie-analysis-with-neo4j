CALL gds.beta.pipeline.linkPrediction.predict.mutate('movieGraph', {
  modelName: 'mlp-lp-model',
  mutateRelationshipType: 'RECOMMENDED_MLP',
  mutateProperty: 'score',
  topK: 5,
  sampleRate: 0.1,        
  concurrency: 4
})
YIELD relationshipsWritten;
