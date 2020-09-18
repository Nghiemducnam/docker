call mvn clean install
call docker rm --force java-demo
call docker rmi jdk8
call docker image build -t jdk8 .
call docker container run --network my-net --name java-demo -p 8080:8080 jdk8
