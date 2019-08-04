help: ## displays the description of each target (Default)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
.PHONY: help

build: ## build the project
	@printf '[INFO] FOO=%s \n' "${FOO}"

test: build ## test and build the project