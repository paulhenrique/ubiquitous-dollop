# Pegando localização deste arquivo
path=`pwd`
container_name='docker-react-application'
port='3000'
echo "============================================================"
echo "🚀 Derrubando container existente"
echo "docker stop ${container_name}"
docker stop ${container_name}
docker rm ${container_name}

echo "============================================================"
echo "🚀 Subindo novo container"
$path = pwd
echo "docker run --detach --publish ${port}:${port} --expose ${port} --hostname ${container_name} --name ${container_name} --volume ${path}/src:/app/src ${container_name} "
docker run --detach --publish ${port}:${port} --expose ${port} --hostname ${container_name} --name ${container_name} --volume ${path}/src:/app/src ${container_name} 

echo "============================================================"
echo "🚀 Abrindo log do container"
echo "docker logs -f ${container_name}"
docker logs ${container_name}

echo "============================================================"
echo "🚀 Container em pé"