number := $(shell  cat guessinggame.sh | wc -l )
date := $(shell date )

createFile : 
	@touch README.md
	@echo "# guessing game">>README.md
	@echo "## information">>README.md
	@echo ">**The date and time at which make was run :** ${date} \n">>README.md
	@echo ">**The number of lines of code contained in guessinggame file :** ${number} lines \n">>README.md

.DEFAULT_GOAL := createFile