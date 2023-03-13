cd ~/Docker
git clone https://github.com/luximus-hunter/een-frontend.git frontend
cd ./frontend
docker build -t uno-frontend -f Dockerfile .
cd ..
rm -rf ./frontend
git clone https://github.com/luximus-hunter/een-backend.git backend
cd ./backend
docker build -t uno-backend -f Dockerfile .
cd ..
rm -rf ./backend
docker rmi $(docker images -f "dangling=true" -q)
docker images --all