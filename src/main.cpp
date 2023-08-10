#include <iostream>

#include "foo_class.h"
#include "foo_header_only.h"

int main(){

    Foo foo(3);

    foo_ns::foo_func("nane");
    
    return 0;
}