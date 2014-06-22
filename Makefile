
# Color helpers
C_CYAN=\x1b[34;01m
C_RESET=\x1b[0m

# Group targets
all: deps lint
ci: lint

# Install dependencies
deps:
	@echo "$(C_CYAN)> installing dependencies$(C_RESET)"
	@npm install

# Lint JavaScript
lint:
	@echo "$(C_CYAN)> linting coffeescript$(C_RESET)"
	@./node_modules/.bin/coffeelint index.coffee scripts
