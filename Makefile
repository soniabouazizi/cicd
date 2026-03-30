CC=gcc
CFLAGS=-Ici -Wall -Wextra
SRC=ci
TEST=ci
BUILD=build

all: $(BUILD)/my_program

$(BUILD)/my_program: $master.c $math_utils.c
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) $^ -o $@

test: $(SRC/test_math
	$(BUILD)/test_math

$(BUILD)/test_math: $(TEST)/test_math.c $(SRC)/math_utils.c
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -rf $(BUILD)
