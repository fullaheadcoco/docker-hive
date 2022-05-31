current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t fullaheadcoco-metastore -f ./Dockerfile-metastore .
	docker build -t fullaheadcoco-hiveserver2 -f ./Dockerfile-hiveserver2 .