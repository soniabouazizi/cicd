CC=gcc
CFLAGS=-Iinclude -Wall -Wextra
SRC=src
TEST=tests
BUILD=build

all: $(BUILD)/my_program

$(BUILD)/my_program: $(SRC)/main.c $(SRC)/math_utils.c
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) $^ -o $@

test: $(BUILD)/test_math
	$(BUILD)/test_math

$(BUILD)/test_math: $(TEST)/test_math.c $(SRC)/math_utils.c
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf $(BUILD)
