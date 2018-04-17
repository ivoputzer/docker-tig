DOCKER_ID_USER=ivoputzer
NAME=tig
all: clean build test
clean:
	docker ps -aqf name=$(NAME) | xargs docker rm
build:
	docker build --rm -t $(NAME) .
test:
	docker run --rm -i $(NAME) --version | grep -a "tig version"
pull:
	docker pull $(DOCKER_ID_USER)/$(NAME):latest
push: all
	docker tag $(NAME) $(DOCKER_ID_USER)/$(NAME)
	docker push $(DOCKER_ID_USER)/$(NAME)
	docker rmi $(DOCKER_ID_USER)/$(NAME)
