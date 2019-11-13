docker login -u "gwestwood" -p "xxxx" bk-harbor-master-prod-01.highwire.org
docker build . -t bk-harbor-master-prod-01.highwire.org/subspace/subspace:1
# create subspace project in harbor
docker push bk-harbor-master-prod-01.highwire.org/subspace/subspace:1
