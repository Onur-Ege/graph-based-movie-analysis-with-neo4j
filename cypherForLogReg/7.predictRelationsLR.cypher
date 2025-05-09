CALL gds.beta.pipeline.linkPrediction.predict.mutate('movieGraph', {
  modelName: 'movie-model',
  mutateRelationshipType: 'RECOMMENDS_LR',
  topK: 5,
  sampleRate: 0.8,        
  concurrency: 4
})
YIELD relationshipsWritten, mutateMillis
RETURN relationshipsWritten, mutateMillis / 1000 AS seconds;
