CC = gcc
CC_FLAGS = -Wall -Wextra -Werror -static -Iinclude 

BUILD = $(PWD)/bin
C_SOURCES = $(shell find src -type f -name '*.c')
INSTALL_DIR = /usr/local/bin


cbash:
	mkdir -p $(BUILD)
	@echo " CC $<"
	@mkdir -p "$$(dirname $@)"
	@$(CC) $(C_SOURCES) -static -o $(BUILD)/cbash


clean:
	@rm -rf bin/

install:
	@cp $(BUILD)/cbash $(INSTALL_DIR)/cbash