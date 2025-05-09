CALL gds.beta.pipeline.linkPrediction.addFeature('movie-lp-pipeline', 'COSINE', {
  nodeProperties:['community_node2vec','hybrid_pagerank','node2vec','year']
});