docker rmi $(docker images -f "dangling=true" -q)
docker images --all
