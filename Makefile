DC= docker-compose
YML = docker-compose.yml
YML_D = srcs/

all:
	docker-machine create --driver virtualbox inception
	docker-machine env inception
	bash srcs/.start.sh

run:
	eval `docker-machine env inception`
	docker-compose -f srcs/docker-compose.yml down
	docker system prune -a
	docker-compose -f srcs/docker-compose.yml up --build

clean:
	docker-compose -f srcs/docker-compose.yml down
	docker system prune -a

fclean: clean
	docker-machine rm inception

re : fclean all
