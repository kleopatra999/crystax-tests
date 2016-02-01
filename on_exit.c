#include <stdlib.h>
#include <assert.h>

void my_exit(int a, void *b) {
    assert( a == 0 );
    assert( b == NULL );
}

int main() {
    assert( on_exit(my_exit, NULL) == 0 );
    return 0;
}
