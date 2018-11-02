all: build

help:
	@echo ""
	@echo "-- Help Menu"
	@echo "  1. make build       - build the hexo image"
	@echo "  2. make start       - start hexo"
	@echo "  3. make release     - release the hexo image"

build:
	@docker build --tag=erwinchang/hexo .

release: build
	@docker build --tag=erwinchang/hexo:$(shell cat VERSION) .

start:
	@docker run -v ${HOME}:/mnt/home -p 8000:8000 -it erwinchang/hexo /bin/bash
