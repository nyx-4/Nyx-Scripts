```
Copyright (C) 2025 Nyx-4 <241463@students.au.edu.pk>  

        This code is distributed in the hope that it will be useful, but
        WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Solution 1
Predict the output. Will there be any compile-time or runtime errors?

```abc
//! The constructor of Program2 will call itself, creating an ininte
//! loop, that will never break, utlimately over-flowing the call stack
```

## Solution 2
Predict the output and thus the order of constructor and destructor calls.
Will there be any errors or warnings?
```abc
Constructor A
Constructor B
Constructor A
Constructor B
Constructor A
Constructor C
Constructor A
Constructor D
Destructor D
Destructor A
Destructor C
Destructor A
Destructor B
Destructor A
Destructor B
Destructor A
//! Errors: No errors, or warnings.
```

## Solution 3
Predict the order of constructor and destructor calls.
Are there any memory leaks? Are there any errors?
```abc
Constructor A
Constructor B
Constructor C
Constructor E
Constructor A
Constructor B
Constructor C
Constructor D
Destructor E
Destructor C
Destructor B
Destructor A
Destructor A
//! Errors: No compile or runtime errors
//! No, unless we allocate dynamic memory in class B, C or D.
```

## Solution 4
Code the proper way (no memory leaks) to free all objects (you are
allowed to modify the classes A and B to achieve this task)
```cpp
#include <iostream>
using namespace std;

class A {
  public:
    A() { cout << "A constructor" << endl; }
    virtual ~A() { cout << "A destructor" << endl; }
};

class B : public A {
  public:
    B() { cout << "B constructor" << endl; }
    ~B() { cout << "B destructor" << endl; }
};

int main() {
    A **class_ptrs = new A *[3];

    for (int i = 0; i < 3; i++) { class_ptrs[i] = new B(); }
    for (int i = 0; i < 3; i++) { delete class_ptrs[i]; }

    delete[] class_ptrs;
}
```

## Solution 5
1. What are friend classes?
    - If `class A` is declared as friend of `class B` in `class B`, then `class A` can see/access all private, protected and public members of `class B`, not vice-versa.
2. What does the *final* keyword do?
    - In C++, the final keyword serves to restrict inheritance and prevent overriding of virtual functions. It ensures that a class cannot be used as a base class and that a virtual function in a base class cannot be redefined in a derived class respectively. [Source: Gemini]