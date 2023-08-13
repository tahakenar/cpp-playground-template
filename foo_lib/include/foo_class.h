#ifndef FOO_CLASS_H
#define FOO_CLASS_H

#include <iostream>

class Foo {
    public:
        explicit Foo(int id);
        ~Foo();
    private:
        int id_;
};

#endif
