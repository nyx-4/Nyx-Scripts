# ECD3: _(Mask your intentions)_

<!-- Problems 1-3: submitted by kazurem -->
<!-- Problems 4-6: submitted by khalid -->
<!-- Problems 7-9: submitted by nyx -->


## Problem 1: _(tagline)_

## Problem 2: _(tagline)_

## Problem 3: _(tagline)_

## Problem 4: _(Trapping Rain Water)_
_Difficulty_: Hard  
_Resources_: Tier 2  
<details>
    <summary>Topics</summary>  

`Array` `Two Pointers` `Dynamic Programming`
</details>
<details>
    <summary>Hint 1</summary>  

For each element, water trapped depends on the left and right maximum heights.
</details>
<details>
    <summary>Hint 2</summary>  

Try using two pointers to track the maximum heights from both directions.
</details>
<details>
    <summary>Hint 3</summary>  

The amount of water at any position is determined by min(leftMax, rightMax) - height[i].
</details>
<details>
    <summary>Source of Problem / Similar Problems</summary>  

1. LeetCode 42: Trapping Rain Water
2. GFG: Trapping Rain Water
</details>

### Problem statement
Given `n` non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

Each element in the array represents the height of the wall at that index, and water can be trapped between the walls.

### Return statement
Return the total amount of rainwater that can be trapped between the walls.

### Example 1:
**Input:** height = [0,1,0,2,1,0,1,3,2,1,2,1]  
**Output:** 6  
**Explanation:** 
```
     |
 |   || |
_|_|_||_||_|
[0,1,0,2,1,0,1,3,2,1,2,1]
```
The above elevation map is represented by the array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water are being trapped.

### Example 2:
**Input:** height = [4,2,0,3,2,5]  
**Output:** 9  
**Explanation:**
```
    |
|   |
| | |
| |||
||||
```

### Starting code
```python
def trap(height: list[int]) -> int:
    """
    Calculate how much water can be trapped after raining
    
    Args:
        height: List of integers representing wall heights
        
    Returns:
        int: Total amount of water that can be trapped
    """
    if not height:
        return 0
        
    water = 0
    left, right = 0, len(height) - 1
    left_max = right_max = 0
    
    while left < right:
        # Your code here
        pass
        
    return water


def main() -> None:
    height = list(map(int, input("Enter wall heights: ").split()))
    result = trap(height)
    print(f"Water trapped: {result}")


if __name__ == "__main__":
    main()
```

## Problem 5: _(Largest Rectangle in Skyline)_
_Difficulty_: Hard  
_Resources_: Tier 2  
<details>
    <summary>Topics</summary>  

`Stack` `Array` `Monotonic Stack`
</details>
<details>
    <summary>Hint 1</summary>  

For each building, try to expand horizontally as much as possible while maintaining the height.
</details>
<details>
    <summary>Hint 2</summary>  

Use a monotonic stack to track buildings that could potentially form larger rectangles.
</details>
<details>
    <summary>Hint 3</summary>  

When processing heights, consider what happens when you encounter a smaller height than what's on top of your stack.
</details>
<details>
    <summary>Source of Problem / Similar Problems</summary>  

1. Leetcode 84: Largest Rectangle in Histogram
2. GFG: Maximum Rectangular Area in Histogram
</details>

### Problem statement
Given an array of integers `heights` representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.

### Return statement
Return an integer representing the area of the largest rectangle that can be formed by a subset of the histogram's bars.

### Example 1:
**Input:** heights = [2,1,5,6,2,3]  
**Output:** 10  
**Explanation:** The largest rectangle is formed by bars at index [2,3] with height 5, area = 5 * 2 = 10.

### Example 2:
**Input:** heights = [2,4]  
**Output:** 4  
**Explanation:** Both bars can form rectangles of area 4.

### Example 3:
**Input:** heights = [1,1,1,1,1,1,1,1]  
**Output:** 8  
**Explanation:** The entire histogram forms the largest rectangle.

### Starting code
```python
def largest_rectangle_area(heights: list[int]) -> int:
    """
    Calculate the largest rectangular area possible in the given histogram
    
    Args:
        heights: List of integers representing histogram bar heights
        
    Returns:
        int: The area of the largest rectangle
    """
    # Initialize stack and result
    stack = []
    max_area = 0
    
    # Add sentinel value to handle remaining elements
    heights.append(0)
    
    # Process all heights
    for i, height in enumerate(heights):
        # Your code here
        pass
        
    return max_area


def main() -> None:
    heights = list(map(int, input("Enter heights: ").split()))
    result = largest_rectangle_area(heights)
    print(f"Largest rectangle area: {result}")


if __name__ == "__main__":
    main()
```

## Problem 6: _(Book Allocation Problem)_
_Difficulty_: Medium  
_Resources_: Tier 2  
<details>
    <summary>Topics</summary>  

`Binary Search` `Greedy`
</details>
<details>
    <summary>Hint 1</summary>  

Try to minimize the **maximum** number of pages using binary search.
</details>
<details>
    <summary>Hint 2</summary>  

Use a helper function to check if a certain max page limit can be used to allocate books to all students.
</details>
<details>
    <summary>Hint 3</summary>  

Remember to ensure each student gets at least one book and books are in **contiguous** order.
</details>
<details>
    <summary>Source of Problem / Similar Problems</summary>  

1. Leetcode 410
2. GFG: Book Allocation Problem
3. Binary Search on Answer problems
</details>

### Problem statement
There are **N** books, each ith book has `A[i]` number of pages.  
You have to allocate books to **M** students such that the **maximum number of pages allocated to a student is minimized**.

Conditions:
- Each book should be allocated to a student.
- Each student gets at least one book.
- Books are assigned in **contiguous order**.

Return the **minimum possible** maximum pages per student.  
Return `-1` if a valid assignment is **not possible**.

### Return statement
The minimum possible value of maximum pages that can be allocated to any student.

### Example 1:
**Input:** books = [12, 34, 67, 90], students = 2  
**Output:** 113  
**Explanation:** Allocate [12, 34, 67] and [90] → max pages = 113 (minimum possible)

### Example 2:
**Input:** books = [5, 17, 100, 11], students = 4  
**Output:** 100

### Starting code
```python
def is_possible(books: list[int], students: int, max_pages: int) -> bool:
    count = 1
    current_sum = 0
    for pages in books:
        if pages > max_pages:
            return False
        if current_sum + pages > max_pages:
            count += 1
            current_sum = pages
        else:
            current_sum += pages
    return count <= students


def allocate_books(books: list[int], students: int) -> int:
    if len(books) < students:
        return -1
    low = max(books)
    high = sum(books)
    result = -1
    while low <= high:
        mid = (low + high) // 2
        if is_possible(books, students, mid):
            result = mid
            high = mid - 1
        else:
            low = mid + 1
    return result


def main() -> None:
    books = list(map(int, input("Enter book pages: ").split()))
    students = int(input("Enter number of students: "))
    print(allocate_books(books, students))


if __name__ == "__main__":
    main()
```

## Problem 7: _(Last Digit of the Partial Sum of Fibonacci Numbers Problem)_
_Difficulty_: Easy  
_Resources_: Tier 2  
<details>
    <summary>Topics</summary>  

`Pattern Analysis` `Number theory`
</details>
<details>
    <summary>Hint 1</summary>  

Make a table with three columns, namely $F_i$, $F_i \mod 2$ and $F_i \mod 3$.
</details>
<details>
    <summary>Hint 2</summary>  

What will be the Pisano period of $F_i \mod 10$?  
What will be the Pisano period of $F_i \mod 500$?
</details>
<details>
    <summary>Hint 3</summary>  

How the problem can be simplified if $m = 0$?
</details>
<details>
    <summary>Source of Problem / Similar Problems</summary>  

1. Learning Algorithms Through Programming and Puzzle Solving by Alexander Kulikov and Pavel Pevzner
</details>

### Problem statement
<!-- Here explain the problem in detail -->
Given two integers $m$ and $n$, find the last digit of sum of Fibonacci numbers, starting from $F_m$ upto $F_n$ both inclusive, where $0 \le m \le n \le 10^{18}$ and $F_i$ represents $i^{th}$ Fibonacci number.

### Return statement
<!-- Here explain what the program should return, or output -->
$$(F_m + F_{m+1} + \dotsm + F_n) \mod 10$$

<!-- Add 2 or 3 examples to better convey your problem statement -->
### Example 1:
**Input:** 3 7  
**Output:** 1  
**Explanation:** 
$$F_3 + F_4 + F_5 + F_6 + F_7 = 2 + 3 + 5 + 8 + 13 = 31$$

### Example 2:
**Input:** 10 10   
**Output:** 5  
**Explanation:** 
$$F_{10} = 55$$

### Example 3:
**Input:** 314 15926  
**Output:** 1  
**Explanation:** 
$$F_{314} + F_{315} + F_{316} + \dotsm + F_{15926} = \dotso 7 + \dotso 0 + \dotso 7 + \dotsm + \dotso 3 = \dotso 1 $$

### Starting code
<!-- Add a good starting point, without revealing too much -->
```py
def main() -> None:
    m, n = map(int, input().split())
    if 0 <= m <= n:
        fib_part_sum(m, n)
    else:
        sys.exit("Problem constraints not satisfied!")


def fib_part_sum(m: int, n: int) -> int:
    ...


if __name__ == '__main__':
    main()
```

## Problem 8: _(Make head-side up of all coins, minimize moves)_
_Difficulty:_ Easy  
_Resources:_ Tier 2  
<details>
    <summary>Topics</summary>  

`Combinatorics` `Dynamic Programming`  
</details>
<details>
    <summary>Hint 1</summary>  

What property makes Example 3 unsolvable? Hint: $m \times n$
</details>
<details>
    <summary>Hint 2</summary>  

What is the smallest values of $m$ and $n$ for which this is solvable?
</details>
<details>
    <summary>Hint 3</summary>  

Divide this problem in four cases, both are even, only one is even, both are odd.
</details>
<details>
    <summary>Source of Problem / Similar Problems</summary>  

1. [64rd International Mathematical Olympiad](https://www.imo-official.org/problems/IMO2023SL.pdf)
</details>

### Problem statement
<!-- Here explain the problem in detail -->
Let $m$ and $n$ be greater than $1$. In each square of $m \times n$ grid lies a coin with its tail-side up.
A move consists of the following steps:
1. Select a $2 \times 2$ square in the grid;
2. flip the coins in the _top-left_ and _bottom-right_ unit squares;
3. flip the coin in either the _top-right_ or _bottom-left_ unit square.

Given a $m \times n$ grid of such coins, print out all moves it would take so that every coin shows head-up after those moves.


### Output statement
<!-- Here explain what the program should return, or output -->
```math
\begin{aligned}
&i, j &- &TR \\
&i, j &- &BL \\
&i, j &- &TR \\
&&\vdots\end{aligned}
```  

where $i, j$ are the $x$ and $y$ coordinates of top-left square of selected $2 \times 2$ grid; $TR$ and $BL$ determines whether $top-right$ or $bottom-left$ coin is flipped

<!-- Add 2 or 3 examples to better convey your problem statement -->
### Example 1:
**Input:** 2 3  
**Output:** 
```math
\begin{aligned}
&0, 0 &- &TR\\
&0, 1 &- &BL
\end{aligned}
```  

**Explanation:**   
Initial condition:  
|     | 0   | 1   |
| --- | --- | --- |
| 0   | T   | T   |
| 1   | T   | T   |
| 2   | T   | T   |

After $0, 0 - TR$:  
|     | 0       | 1       |
| --- | ------- | ------- |
| 0   | **_H_** | **_H_** |
| 1   | T       | **_H_** |
| 2   | T       | T       |

After $0, 1 - BL$:  
|     | 0       | 1       |
| --- | ------- | ------- |
| 0   | H       | H       |
| 1   | **_H_** | H       |
| 2   | **_H_** | **_H_** |

### Example 2:
**Input:** 5 3  
**Output:** 
```math
\begin{aligned}
&0, 0 &- &BL\\
&0, 1 &- &TR\\
&2, 0 &- &BL\\
&2, 1 &- &TR\\
&3, 0 &- &BL\\
&3, 1 &- &BL\\
&3, 0 &- &TR\\
\end{aligned}
```  

**Explanation:**  
Initial condition:
|     | 0   | 1   | 2   |
| --- | --- | --- | --- |
| 0   | T   | T   | T   |
| 1   | T   | T   | T   |
| 2   | T   | T   | T   |
| 3   | T   | T   | T   |
| 4   | T   | T   | T   |

After $0, 0 - BL$
|     | 0       | 1       | 2   |
| --- | ------- | ------- | --- |
| 0   | **_H_** | T       | T   |
| 1   | **_H_** | **_H_** | T   |
| 2   | T       | T       | T   |
| 3   | T       | T       | T   |
| 4   | T       | T       | T   |

After $0, 1 - TR$
|     | 0   | 1       | 2       |
| --- | --- | ------- | ------- |
| 0   | H   | **_H_** | **_H_** |
| 1   | H   | H       | **_H_** |
| 2   | T   | T       | T       |
| 3   | T   | T       | T       |
| 4   | T   | T       | T       |

After $2, 0 - BL$
|     | 0       | 1       | 2   |
| --- | ------- | ------- | --- |
| 0   | H       | H       | H   |
| 1   | H       | H       | H   |
| 2   | **_H_** | T       | T   |
| 3   | **_H_** | **_H_** | T   |
| 4   | T       | T       | T   |

After $2, 1 - TR$
|     | 0   | 1       | 2       |
| --- | --- | ------- | ------- |
| 0   | H   | H       | H       |
| 1   | H   | H       | H       |
| 2   | H   | **_H_** | **_H_** |
| 3   | H   | H       | **_H_** |
| 4   | T   | T       | T       |

After $3, 0 - BL$
|     | 0       | 1       | 2   |
| --- | ------- | ------- | --- |
| 0   | H       | H       | H   |
| 1   | H       | H       | H   |
| 2   | H       | H       | H   |
| 3   | **_T_** | H       | H   |
| 4   | **_H_** | **_H_** | T   |

After $3, 1 - BL$
|     | 0   | 1       | 2       |
| --- | --- | ------- | ------- |
| 0   | H   | H       | H       |
| 1   | H   | H       | H       |
| 2   | H   | H       | H       |
| 3   | T   | **_T_** | H       |
| 4   | H   | **_T_** | **_H_** |

After $3, 0 - TR$
|     | 0       | 1       | 2   |
| --- | ------- | ------- | --- |
| 0   | H       | H       | H   |
| 1   | H       | H       | H   |
| 2   | H       | H       | H   |
| 3   | **_H_** | **_H_** | H   |
| 4   | H       | **_H_** | H   |

### Example 3:
**Input:** 5 4  
**Output:** _**ValueError**: Can not find a way to make all coins heads-up_  
**Explanation:** There is no way (I think) to make all coins shows head-up in finite moves.

### Starting code
<!-- Add a good starting point, without revealing too much -->
```py
def main() -> None:
    m, n = map(int, input().split())
    if m <= 1 or n <= 1:
        sys.exit("Problem constraints not satisfied!")
    elif is_solvable(m, n):
        print_moves(m, n)
    else:
        sys.exit("ValueError: Can not find a way to make all coins heads-up")


def is_solvable(m: int, n: int) -> bool:
    ...


def print_moves(m: int, n: int) -> None: 
    board_arr: list[list[str]] = [["T" for _ in range(m)] for _ in range(n)]
    ...


def make_move_BL(arr: list[list[str]], k: int, l: int) -> list[list[str]]:
    ...


def make_move_TR(arr: list[list[str]], k: int, l: int) -> list[list[str]]:
    ...


def print_board(arr: list[list[str]]) -> None:
    for row in arr:
        print(" ".join(row))


if __name__ == '__main__':
    main()
```

## Problem 9: _(Coin Partitions)_
_Difficulty_: Easy  
_Resources_: Tier 2  
<details>
    <summary>Topics</summary>  

`Combinatorics` `Dynamic Programming` `Brute Force`  
</details>
<details>
    <summary>Source of Problem / Similar Problems</summary>  

1. [#78 Coin Partitions](https://projecteuler.net/problem=78)
</details>

### Problem statement
<!-- Here explain the problem in detail -->
Let $p(n)$ represent the number of different ways in which $n$ coins can be separated into piles. For example, five coins can be separated into piles in exactly seven different ways, so $p(5) = 7$.
```
OOOOO
OOOO   O
OOO   OO
OOO   O   O
OO   OO   O
OO   O   O   O
O   O   O   O   O
```


### Return statement
<!-- Here explain what the program should return, or output -->
Find the least value of $n$ for which $p(n)$ is divisible by one million.




<!-- Add 2 or 3 examples to better convey your problem statement -->
These examples deals with $f(n)$, not $min\_n()$.
### Example 1:
**Input:** 5  
**Output:** 7  
**Explanation:** 
```
OOOOO
OOOO   O
OOO   OO
OOO   O   O
OO   OO   O
OO   O   O   O
O   O   O   O   O
```

### Example 2:
**Input:** 7  
**Output:** 15  
**Explanation:**  
```
OOOOOOO
OOOOOO O
OOOOO OO
OOOOO O O
OOOO OOO
OOOO OO O
OOOO O O O
OOO OOO O
OOO OO OO
OOO OO O O
OOO O O O O
OO OO OO O
OO OO O O O
OO O O O O O
O O O O O O O
```

### Example 3:
**Input:** $n$  
**Output:** $f(n)$ such that $f(n) \mod 1,000,000 = 0$ and $\forall x \lt n, f(n) \mod 1,000,000 \ne 0$  
**Explanation:** Find the smallest $n$ for which $f(n)$ is divisible by $1,000,000$.

### Starting code
<!-- Add a good starting point, without revealing too much -->
```py
def main() -> None:
    print(min_n())


# Do better than Brute force.
def min_n() -> int:
    n = 1
    while True:
        if f(n) % 1_000_000: return n
        n += 1


# This function is explained in examples.
def f(n):
    ...


if __name__ == '__main__':
    main()
```
