.DEFAULT_GOAL := build
VERSIONS=alpine debian image ppa

.PHONY: build-version
build-version:
	docker build -t test/redis:$(VERSION) $(VERSION)/
	docker run -it --rm --entrypoint php test/redis:$(VERSION) -v > packages.$(VERSION).tmp
	docker run -it --rm --entrypoint php test/redis:$(VERSION) -m >> packages.$(VERSION).tmp

.PHONY: build
build:
	$(foreach version,$(VERSIONS), $(MAKE) -s build-version VERSION=$(version);)
	docker image ls --format '{{ .Tag }}\t{{ .Size}}' test/redis|sort -k2
