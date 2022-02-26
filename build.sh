container_name='docker-react-application'

echo "============================================================"
echo "🚀 Refazendo build"
echo "docker build . -t ${container_name}"
docker build . -t ${container_name}

echo "============================================================"
echo "🚀 Build completo"
echo "============================================================"