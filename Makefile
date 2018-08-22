NAMESPACE=juliacn
IMAGE=docker
TAG=1.0

jupyter:
	docker run -v `pwd`/home:/home -p 8888:8888 --rm -it juliacn/docker:1.0 

bash:
	docker run -v `pwd`/home:/home -p 8888:8888 --rm -it juliacn/docker:1.0 bash

build:
	docker build -t $(NAMESPACE)/$(IMAGE):$(TAG) . 

test:
	docker run --rm -it $(NAMESPACE)/$(IMAGE):$(TAG) julia /test.jl 

push:
	docker push $(NAMESPACE)/$(IMAGE):$(TAG)
