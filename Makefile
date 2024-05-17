all:
	@mkdir ~/data ; \
	mkdir ~/data/wordpress ; \
	mkdir ~/data/mysql ; \
	docker compose -f ./srcs/docker-compose.yml up -d --build

up:
	@docker compose -f ./srcs/docker-compose.yml up -d

down:
	@docker compose -f ./srcs/docker-compose.yml down

re:
	@docker compose -f srcs/docker-compose.yml up -d --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\

.PHONY: all re down clean