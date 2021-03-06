container_name='docker-react-application-simple-deploy'

echo "============================================================"
echo "🚀 Refazendo build"
echo "docker build . -t ${container_name}"
docker build -f dockerfiles/Dockerfile.simpleDeploy -t ${container_name} .

echo "============================================================"
echo "🚀 Build completo"
echo "============================================================"