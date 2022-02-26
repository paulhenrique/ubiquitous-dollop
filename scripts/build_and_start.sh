container_name='react-deploy'

docker build . -t ${container_name}
docker run --name ${container_name} -d -p 8080:80 ${container_name}