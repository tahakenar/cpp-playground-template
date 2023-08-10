#include "foo_class.h"

Foo::Foo(int id): id_(id) {
    std::cout << "Foo is constructed with id: " << id_ << std::endl;
}

Foo::~Foo() {
    std::cout << "Foo with id " << id_ << " is destructed" << std::endl;
}