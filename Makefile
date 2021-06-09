all:
	docker-compose -f srcs/docker-compose.yml build 
	docker-compose -f srcs/docker-compose.yml up

run:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f srcs/docker-compose.yml up --build

clean:
	docker-compose -f srcs/docker-compose.yml down

fclean: clean
	docker system prune -a

re : fclean all
