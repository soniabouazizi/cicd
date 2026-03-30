#include <assert.h>
#include <stdio.h>
#include "math_utils.h"

int main() {
    assert(add(2, 3) == 5);
    assert(add(-1, 1) == 0);
    assert(sub(5, 3) == 2);
    printf("All tests passed!\n");
    return 0;
}
