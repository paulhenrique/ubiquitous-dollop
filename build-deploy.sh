# Pegando localização deste arquivo
path=`pwd`
container_name='temp-deploy-react'

echo "============================================================"
echo "🚀 Refazendo build"
echo "docker build . -t ${container_name}"
echo "docker build -f Dockerfile.deploy -t ${container_name} ./dockerfiles "
docker build -f ./dockerfiles/Dockerfile.deploy -t ${container_name} ./

echo "============================================================"
echo "🚀 Build completo"
echo "============================================================"

echo "============================================================"
echo "🚀 Derrubando se o container já existe"
echo "============================================================"
echo "docker stop ${container_name}"
docker stop ${container_name}
docker rm ${container_name}

echo "============================================================"
echo "🚀 Subindo novo container"
$path = pwd
echo "docker run --detach --name ${container_name} "
docker run --detach --name ${container_name} ${container_name} --volume ${path}/builded_application/build:/app/build ${container_name} 


echo "============================================================"
echo "🚀 Container em pé"
echo "============================================================"


echo "============================================================"
echo "🚀 Gerando build"
echo "============================================================"
echo "🚀 Criando pasta da aplicação"
echo "mkdir builded_application"
mkdir builded_application
echo "🚀 Copiando pasta build para fora"
echo "docker cp ${container_name}:/app/build ./"
docker cp ${container_name}:/app/build ./builded_application

echo "🚀 Copia os arquivos de build para a pasta"
cp  ./scripts/* ./builded_application/
chmod 777  ./builded_application/*
./builded_application/build_and_start.sh