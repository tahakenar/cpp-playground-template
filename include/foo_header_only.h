#ifndef FOO_HEADER_ONLY_H
#define FOO_HEADER_ONLY_H

#include <iostream>

namespace foo_ns {

template <typename T>
void foo_func(const T& value) {
    std::cout << "Value passed is: " << value << std::endl;
}

}

#endif
