
.PHONY: all README.md

all: README.md

README.md: guessinggame.sh makefile
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Generated on: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
