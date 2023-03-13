cd ~/Docker || exit
git clone https://github.com/luximus-hunter/een-frontend.git frontend
cd ./frontend || exit
docker build -t uno-frontend -f Dockerfile . --no-cache
cd ~/Docker || exit
rm -rf ./frontend
git clone https://github.com/luximus-hunter/een-backend.git backend
cd ./backend || exit
docker build -t uno-backend -f Dockerfile . --no-cache
cd ..
rm -rf ./backend
docker rmi $(docker images -f "dangling=true" -q)
docker images --all
