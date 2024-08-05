OS=$(shell go env GOOS)
ARCH=$(shell go env GOARCH)
FILENAME=ingenious-gobot-$(OS)-$(ARCH)
FILE_LOCATION=./bin/$(FILENAME)

buildDocker:
	docker build -t ingenious-gobot

build:
	go build -o ./bin/ingenious-gobot ./

buildWithArch:
	go build -o $(FILE_LOCATION) ./

buildLocation:
	@echo $(FILE_LOCATION)

buildName:
	@echo $(FILENAME)

test:
	go test ./...