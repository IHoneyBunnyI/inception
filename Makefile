all:
	docker-compose -f srcs/docker-compose.yml build 
	docker-compose -f srcs/docker-compose.yml up

run:
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env down
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build

clean:
	docker-compose -f srcs/docker-compose.yml --env-file srcs/.env down

fclean: clean
	docker system prune -a

re : fclean all
