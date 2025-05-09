## Problem 1:
Predict the output. Will there be any compile-time or runtime errors?
```cpp
#include <iostream>

using namespace std;

class Program2
{
    public:
    
    Program2()
    {
        Program2 pg2;
        cout << "Constructor Program 2" << endl;

        exit(0);
    }

};

class Program1
{
    public:
    Program1()
    {
        cout << "Constructor Program 1" << endl;  
        Program2 pg2;
    }
};

static Program1 myProgram;

int main()
{
    Program1 pg1;
    Program2 pg2;
}
```

## Problem 2:
Predict the output and thus the order of constructor and destructor calls. Will there be any errors or warnings?
```cpp
#include <iostream>

using namespace std;

class A
{
    public:
    A()
    {
        cout << "Constructor A" << endl;
    }

    ~A()
    {
        cout << "Destructor A" << endl;
    }
};

class B: public A
{
    public:
    B()
    {
        cout << "Constructor B" << endl;
    }
};

class C: public B, public A
{
    public:
    C()
    {
        cout << "Constructor C" << endl;
        B b;
    }

    ~C()
    {
        cout << "Destructor C" << endl;
    }
};

class D: public B, public C, public A
{
    public:
    D()
    {
        cout << "Constructor D" << endl;
    }

    ~D()
    {
        cout << "Destructor D" << endl;
    }
};


int main()
{
    D *d = new D();
    delete d;
}
```
## Problem 3
Predict the order of constructor and destructor calls. Are there any memory leaks? Are there any errors?
```cpp
#include <iostream>

using namespace std;

class A
{
    public:
    A()
    {
        cout << "Constructor A" << endl;
    }

    ~A()
    {
        cout << "Destructor A" << endl;
    }
};

class B
{
    public:
    B()
    {
        cout << "Constructor B" << endl;
    }

    virtual ~B()
    {
        cout << "Destructor B" << endl;
    }
};

class C: public A, public B
{
    public:
    C()
    {
        cout << "Constructor C" << endl;
    }

    ~C()
    {
        cout << "Destructor C" << endl;
    }
};

class D: public C
{
    public:
    D()
    {
        cout << "Constructor D" << endl;
    }

    ~D()
    {
        cout << "Destructor D" << endl;
    }
};

class E: public C
{
    public:
    E()
    {
        cout << "Constructor E" << endl;
    }

    ~E()
    {
        cout << "Destructor E" << endl;
    }
};

int main()
{
    B* b = new E();
    A* a = new D();

    delete b;
    delete a;
}
```
