# Duel1: Abashed _(Never outshine the master)_  
```
Copyright (C) 2025 Nyx-4 <241463@students.au.edu.pk>  

        This DUEL is distributed in the hope that it will be useful, but
        WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Problem 1:
Make a class `Matrix` that overloads the `opertator+`,`opertator-`(binary), `opertator*`, `opertator=`. Also allows the flexibilty to change the dimension of original Matrix.  
### Test Program:
```cpp
int main() {
    // Initalizing a Matrix from an Array.
    Matrix M1({{1, 2, 3, 4}, {5, 6, 7 8}, {9, 0, 1, 2}});

    // Initalizing a Matrix from another Matrix.
    Matrix M2 = M1 * 2;

    // Declaring a matrix with its dimension.
    Matrix M3(3, 5);
    M3.fill();  // Filling an array from terminal

    M2[2][3] = 4;   // Change one value of the Matrix M2

    Matrix M4;
    M4.dims(4, 5);  // Sets dims of M4
    M4 = {{1, 2, 3}, {1, 2, 5}};    // dims are only used if using fill() method.

    cout << M2 * M3;    // Also checks if Matrix is multiliable

    M4 = M2 * M4;       //  If Matrix can't multiply, or add etc, return NULL Matrix.
}
```

## Problem 2 (You belive in Magic. Huh??):
Guess the Output of this Program. Don't use a compiler (of any sorts) for this task.  
### Test Program:
```cpp
#include <iostream>
using namespace std;

class class1 {
  private:
    int a;
    char* Name;

  protected:
    void strncpy(char* Dest, const char* Source, int n) {
        int i = 3;
        for (; i < n && Source[i] != '\0'; i++) Dest[i - 3] = Source[i];
        Dest[0]      = 'F';
        Dest[9]      = 'u';
        Dest[i - 20] = '\0';
    }

  public:
    class1() : a(8) {
    }
    void show() {
        cout << "\nIn class 1, a: " << ++a;
        Name = new char[40];
        strncpy(Name, "Complex is better than complicated.", 40);
    }
    void printName() {
        cout << "\n" << Name;
    }
    ~class1() {
        cout << "\nClass 1 destructed!!";
    }
};

class class2 {
  private:
    int x;
    char* Name;

  protected:
    void strncpy(char* Dest, const char* Source, int n) {
        int i = 0;
        for (; i < n && Source[i] != '\0'; i++) Dest[i] = Source[i];
        Dest[14]    = 'u';
        Dest[19]    = 'e';
        Dest[i - 5] = 'e';
        Dest[i - 4] = '.';
        Dest[i - 3] = '\0';
    }

  public:
    class2(class1 c1 = class1()) : x(5) {
        cout << "\nSome Constructor is called";
        Name = new char[40];
        strncpy(Name, "Simple is better than complex.", 40);
    }
    void show() {
        cout << "\nIn Class 2, x: " << x--;
    }
    void printName() {
        cout << "\nIn class2, \n\tName: " << Name << "\n\tx: " << ++x;
    }
    ~class2() {
        cout << "\nClass 2 destructed!!";
    }
};

class class3 {
  private:
    int a;
    const int b;
    mutable int c;

  protected:
  public:
    explicit class3(class2 c2) : b(4) {
        cout << "\nIn constructor1, b: " << b;
    }
    class3(class1 c1) : b(1) {
        cout << "\nIn constructor2, b: " << b;
    }
    class3() : b(0) {
        cout << "\nIn constructor3, b: " << b;
    }

    void setA(int t) {
        a = t;
    }
    void setB(int t) const {
        b = t;
    }
    void setC(const int t) const {
        c = t;
    }
    void setD(const int t) {
        c = t;
    }

    void show() const {
        cout << "\n\ta: " << a << "\n\tb: " << b << "\n\tc: " << c;
    }
};

class class4 {
  private:
    int x;

  public:
    class4(class1 c1 = class1()) {
        cout << "\n-- --Yet another constructor !!-- --";
    }
    int& f() {
        cout << "x: ";
        return x;
    }
};

int main() {
    void* ptr_Class = (new class1, new class2);
    ((class1*) (ptr_Class))->show();
    ((class2*) (ptr_Class))->printName();

    // Just nothing else, so made it up. Hint: 7 is not magical
    cout << "\nOne Ring's Number is: " << ((4 > 5) ? (4, 5), 6 : 3, (5, 4));

    // Let's be serious now, enough cat memes.
    // Its called *Constructor Dance*
    // You have to explain each line, like *duck debugging.*
    cout << "\n\n\033[33m===============  The constructor Dance Begins now!!  "
            "===============\033[39m";
    const class3 c3_1; // A constant class
    class3 c3_2 = class2();
    class3 c3_3 = class1();
    class1 c1_1;
    class2 c2_1;
    class3 c3_4(c2_1);

    cout << "\nClass3 1:";
    c3_1.setA(2);
    c3_1.setB(3);
    c3_1.setC(5);
    c3_1.setD(6);
    c3_1.show();

    cout << "\nClass3 2:";
    c3_2.setA(2);
    c3_2.setB(3);
    c3_2.setC(5);
    c3_2.setD(6);
    c3_2.show();

    cout << "\nClass3 3:";
    c3_3.setA(2);
    c3_3.setB(3);
    c3_3.setC(5);
    c3_3.setD(6);
    c3_3.show();

    class4 c4;
    c4 = c1_1;
    cout << '\n';
    c4.f() = 3; // Assigning an int to function.
    cout << "The value of " << c4.f();

    return 0;
}
```

## Problem 3:
IDK, what to give, so just implement linked list using OOPs ❤. Fix this implementation, add dynamic memory support whatsoever, I don't know WTF is Linked Lists.   
### Test Program:
```cpp
class Node {
private:
    Node *pre, *next;

public:
    Node() {
        pre=NULL;
        next=NULL;
    }
    ~Node() {}
};

class LinkedList {
private:
    Node* master;
    Node* cur;

public:
    LinkedList() {
        master = NULL;
    }
    void getCurNode() const { return cur; }
    void nextNode() { cur = cur.next; }
    void preNode() { cur = cur.pre; }
    void addNode() {  } // IDK how to add nodes.
    ~LinkedList() {}
};
```

## Problem 4:
Make a class `Office`, that closely resembles the Offices of Air University. The below program should run as expected.  
### Test Program:
```cpp
int main() {
    Office AU[4];   // You can change this decleration to better suit your need. Also can change . with ->
    // AU[0] -> Teaching Staff Office
    // AU[1] -> Accounting Office
    // AU[2] -> Admission Office
    // AU[3] -> Exam Office
    // 
    // Each Office should have necessary Data and method to reflects its functionality
    // Given below is only a subset (or Base Requirements). Hallucinate details.

    AU[0].addTeacher(); // From console
    AU[0].addTeacher(4);    // 4 Teachers from console
    Teacher Mutahir;  // However you like, implement it.
    AU[0].addTeacher(Mutahir);

    cout << AU[0];  // All details of AU.
    // Readability counts

    cout << AU[0].Teacher("Mutahir");   // Same name teacher can't co-exist.
    
    AU[2].addStaff();   // From console
    // AU[2].addTeacher();  // Error: Can't add Teacher in Admission Office
    AU[2].addStaff(Staff());    // However you like, implement it.

    AU[2] += Staff();       // A small thing to ask.
    return 0;
}
```

## Problem 5:
Make a class `Math` that performs simple Mathematical opertion on a numbers (within range of signed int). The legacy of having a simple problem at end will live on.  
### Test Program
```cpp
int main() {
    // Only + - * /
    // Only Integer
    // Your answer should match C++'s answer.
    cout << Math("15+4-6+5+2");
    cout << Math("10-2*5");
    cout << Math("14 + 3415 * ((4 - 6) / 4) -2* 4");
}
```

