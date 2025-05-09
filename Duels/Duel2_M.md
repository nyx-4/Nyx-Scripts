## Problem 1:
Predict the output. Will there be any compile-time or runtime errors?
```
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