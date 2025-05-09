CALL gds.graph.drop('movieGraph', false) YIELD graphName;

CALL gds.graph.project(
  'movieGraph',
  {
    ValidMovie: {
      label: 'ValidMovie',
      properties: ['hybrid_pagerank', 'community_node2vec','node2vec','year']
    }
  },
  {
    CO_ACTED_WITH: {orientation: 'UNDIRECTED'},
    CO_DIRECTED:   {orientation: 'UNDIRECTED'},
    RELATED_TO:    {orientation: 'UNDIRECTED'},
    SIMILAR_TO:    {orientation: 'UNDIRECTED'}
  }
);

