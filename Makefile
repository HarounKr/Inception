all: up

up:
	@mkdir -p /home/hkrifa/data/mariadb
	@mkdir -p /home/hkrifa/data/wordpress
	@printf '\e[38;5;87m'
	docker-compose -f srcs/docker-compose.yml up -d
	@printf '\e[38;5;82mThe containers are up but please wait for the servers to start !\e[0m \n'
#	@sudo chmod 777 /etc/hosts
#	@printf '127.0.0.1 hkrifa.42.fr ' >> /etc/hosts
	@sudo chmod -R 777 /home/hkrifa/data/

down:
	docker-compose -f srcs/docker-compose.yml down

clean: down
	docker volume rm srcs_data-base srcs_src
	@sudo rm -rf /home/hkrifa/data/

fclean: clean
	docker system prune -a -f
re: fclean all

.PHONY: clean fclean all re up down
