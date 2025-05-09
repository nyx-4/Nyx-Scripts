# Duel1: Balrog _(Don't trust friends, use enemies)_  
```
Copyright (C) 2025 Nyx-4 <241463@students.au.edu.pk>  

        This DUEL is distributed in the hope that it will be useful, but
        WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

## Problem 1 _(Charade)_
> No compiler, no AI for this question. 

Snippets are independent, and have no effect on each other.  
Will they compile? If yes, the output. If no, then reason why don't compile?
```cpp
#include <iostream>
using namespace std;

//: Snippet 1
class class1 { public: int a = 5; void show() { cout << a; } void printName() { cout << "\nClass 1\n"; } };
class class2 { public: int a = 7; void show() { cout << a; } void printName() { cout << "\nClass 2\n"; } };

void snippet2() {
    void* ptr_Class = (new class1, new class2);
    ((class1*) (ptr_Class))->show();
    ((class1*) (ptr_Class))->printName();
    ((class2*) (ptr_Class))->show();
    ((class2*) (ptr_Class))->printName();
}

//: Snipper 2
void snippet2() {
    cout << "\nOne Ring's Number is: " << ((4 > 5) ? (4, 5), 6 : 3, (5, 4));
}

//: Snipper 3
int snippet3() {
    bool b = false;
    cout << ++b;
}

//: Snipper 4
int snippet4() {
    char Str[3] = "Pie";
    cout << Str;
}

//: Snipper 5
int snippet5() {
    unsigned char arr[3][4][5];
    unsigned char **arr2 = arr[2];
    cout << (arr2[0][1] == arr[2][0][1]);
}

//: Snipper 6
int snippet6() {
    int arr = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 };
    cout << 3[arr];
}

//: Snipper 7
struct Bit { int b : 2 = 1; };

int snippet7() {
    Bit bit;
    cout << ++bit.b;
}

//: Snipper 8
struct Bit {
    int a;
    float b;
    string c;
};

void show (Bit b) { cout << "\nA = " << b.a << ", B = " << b.b << ", C = " << b.c; }

// Tell which of these assignment is valid, and what is the output of show(Bit) for valid assignments.
int snippet8() {
    Bit bit0 = {.a = 0, .b = 0.0, .c = "0"};
    Bit bit1 = {b: 0, c: "0"};
    Bit bit2 = {.b = 0.0, .c = "0"};
    Bit bit3 = {.a = 0, .c = "0", .b = 0.0};
}
```

## Problem 2 _(Beat the Trojan)_
_Spinoff_: You own a hotel and one day epidemic named `Trojan` spread, you want to quarantine the rooms affected by it. A recent study has shown that the virus has a pecculiar property, it always spread to the room assigned to men that has most money and it infects minimum possible people in its way. The billionaire in room `X` has assigned you to protect him.  

Path: The virus always start at room#1 and then it:  
    1. Go to next room (+1)  
    2. Go to room thats number is twice current room's number. (x2)  
    3. Go to room thats number is thrice current room's number. (x3)  

Prediction: The scientist have also predicted in that paper that this virus will mutate next month and follow some different strategy to spread, but it is constrained  

Constraints: The virus must follow three rules, each rule must be from (+1) to (+9) and (x2) to (x9).

Input:  `rules`         - The three rules that a virus has in its gene.
        `goldenRoom`    - The room number of person with most money.
Output: `roomNumbers`   - All rooms that will be affected.


## Problem 3 _(Primitive Calculator)_
_Spinoff_: You own a hotel, and want to calculate more advanced maths (containing only +, -, *, / and some variables). You can't compiler (or library function) because the Open-source license don't permit it.  

Input:  `mathString`    - A string containing a math problem consisting of digits, (+, -, *, /) and variables such as roomPrice(denoted by $), foodPrice (#), and gym price (&).  
Output: `totalBill`     - Total bill calculated as given in string.  

Constraints: You can't use any library functions (except those that don't solve it in one-go like strlen).  

## Problem 4 _(Google Search)_
_Spinoff_: You own a hotel which has many tourist. You want a search feature in your computer, but the problem is that most tourist are foreign. You have a search function in your computer, but often tourist don't know exactly what they are looking for and only have a vague idea of their friend name.  

Input:  `nameGiven`         - A vague name such as _divn_  
Output: `possibleMatches`   - All names from database in an array, that matches the pattern with more matched name on top.  
Example: The input _divn_ can give (in order) divn, Divn, sadivn, Sladivnal, Saladivn, divan, diven, deivan, Daeivarn, sadu-invehn.  

Constrait: If multiple strings gives same heuristic value they should come in alphabetical order. The exact sub-string match should come before non-exact sub-string match. The string in which `nameGiven` comes before, gets higher score in heuristic function (e.g., sadivn comes before Aladivn, because sa is smaller then Ala).


## Problem 5 _($$$ is everything)_
_Spinoff_: You own a hotel which serves tourist well. The tourist usually pay daily morning in cash, and often get coins as change. You have received complaints that tourist are often given alot of coins, which they find hard to manage. So, you want that each tourist should get minimum number of coins.  

Input: `moneyChange`    - The money that the tourist should be given as change  
        `coins`         - An array containing struct `{valueOfCoin, numberOfCoins}`.  
Return: `coins`         - An array containing struct `{valueOfCoin, numberOfCoins}`.  

Constrints: The program should return minimum number of coins, such that the sum of all coins given back is exactly `moneyChange` and no coin is used more than the quantity it is present.  


## Problem 6 _(Management, not my type)_
_Spinoff_: You own a hotel which has _N_ rooms. The tourist like to rent room from your hotel for some time (unknown at moment). Some tourist comes in group, so they want consecutive rooms. Also provide a way to free room after tourist departs.  

Input: `roomWanted` - The number of room that tourist wants to book  
Return: `firstRoom` - The location of first allocated room, as assigned rooms are consective.  
        `0`         - If consective rooms are not available  

Input: `firstRoom`  - The location of first allocated room, all room assigned in group should also be freed.  
Return: `void`      - No need to output anything.  

Constraints: The program should use **minimum RAM**, and provide fast allocation of rooms.