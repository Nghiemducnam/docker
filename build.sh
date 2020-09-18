mvn clean install
docker rm --force java-demo
docker rmi jdk8
docker image build -t jdk8 .
docker container run --network my-net --name java-demo -p 8080:8080 jdk8
