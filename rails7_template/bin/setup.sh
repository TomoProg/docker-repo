#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# 環境変数 CERT がない場合はエラーにする
if [ -z $CERT ]; then
    echo "CERT is not set."
    exit 1
fi

echo "docker build start"
docker-compose $SCRIPT_DIR/run-docker-compose.sh up --build
echo "docker build end"

echo "DB user create start"
docker exec -it rails_template_db /var/scripts/create_user.sh
echo "DB user create end"

echo "DB create start"
docker exec -it rails_template_web db:create
echo "DB create end"

echo "certification start"
cd $SCRIPT_DIR/../front/config/cert
mkcert -key-file key.pem -cert-file cert.pem app.$CERT.nip.io localhost
echo "certification end"

echo "FINISH!!!"
