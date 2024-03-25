# ansible_dev_container_env
proyecto para usar docker containers para desarrollos de ansible

# ansible execution environment
docker pull quay.io/ansible/awx-ee:23.8.1
docker run -it -v .:/runner quay.io/ansible/awx-ee:23.8.1 bash

# levantar el contenedor
docker-compose up -d

# abrir consola dentro del contenedor
docker run -it -v .:/ansible ansible_dev_container_env:latest bash
o tambien con attach-shell en el plugin de docker para VS-CODE

# preparar para subir a dockerhub
docker container commit 143809b10551 ansible_dev_container_env:latest

docker image tag ansible_dev_container_env:latest marceloarizaga/ansible_dev_image:v11.01.2024

docker image push marceloarizaga/ansible_dev_image:v11.01.2024
