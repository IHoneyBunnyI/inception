DC= docker-compose
YML = docker-compose.yml
YML_D = srcs/

all:
	docker-compose -f srcs/docker-compose.yml build
	docker-compose -f srcs/docker-compose.yml up

clean:
	docker system prune -a

re : clean all
