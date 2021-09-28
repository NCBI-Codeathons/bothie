## README

[repo](https://github.com/ratschlab/metagraph)

```bash
docker pull ratschlab/metagraph:latest
# The entrypoint determines whether it uses DNA or proteins
# ./metagraph defaults to DNA
# Explicit entrypoints:
# metagraph_DNA
# metagraph_Protein

QUERY=query.faa
DATA=$(find db -name '*.faa' -type f |  sed -e 's/^/\/data\//')


docker run --entrypoint metagraph_Protein --cpus 8 -v $PWD:/data ratschlab/metagraph:latest \
build -v --parallel 8 --mem-cap-gb 12 -k 31 -o /data/graph $DATA


docker run --entrypoint metagraph_Protein --cpus 8 -v $PWD:/data ratschlab/metagraph:latest \
annotate -v -p 8 --anno-filename -i /data/graph.dbg -o /data/graph $DATA
# --anno-label "foo"


docker run --entrypoint metagraph_Protein --cpus 8 -v $PWD:/data ratschlab/metagraph:latest \
query -i /data/graph.dbg -a /data/graph.column.annodbg --discovery-fraction 0.1 /data/$QUERY
```