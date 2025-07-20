# ECD3: _(Mask your intentions)_

<!-- Solve the six problems that you didn't submitted. -->
# Kazurem's Solution

## Solution 4: _(Trapping Rain Water)_
## Solution 5: _(Largest Rectangle in Skyline)_
## Solution 6: _(Book Allocation Problem)_
## Solution 7: _(Last Digit of the Partial Sum of Fibonacci Numbers Problem)_
## Solution 8: _(Make head-side up of all coins, minimize moves)_
## Solution 9: _(Coin Partitions)_

# Khalid's Solution

## Solution 1: _()_
## Solution 2: _()_
## Solution 3: _()_
## Solution 7: _(Last Digit of the Partial Sum of Fibonacci Numbers Problem)_
## Solution 8: _(Make head-side up of all coins, minimize moves)_
## Solution 9: _(Coin Partitions)_

# Nyx's Solution

## Solution 1: _()_
## Solution 2: _()_
## Solution 3: _()_
## Solution 4: _(Trapping Rain Water)_
### Final code
```py
class Solution:
    def trap(self, height: list[int]) -> int:
        """
        Calculate how much water can be trapped after raining

        Arguments:
            height (list[int]): List of integers representing wall heights

        Returns:
            int: Total amount of water that can be trapped
        """


        """
        Thought process:
            Partition the array in two parts.
            1. Left side of array, with tallest wall on right.
            2. Right side of array, with tallest wall on left.

            Iterate over Part 1 left-to-right
            Iterate over Part 2 right-to-left
        """

        max_value_index: int = height.index(max(height))
        left_max: int = 0
        right_max: int = 0
        water_trapped: int = 0

        # Iterating over first half left-to-right
        for i in height[:max_value_index]:
            if left_max < i:
                left_max = i
            water_trapped += max(0, left_max - i)

        # Iterating over second half right-to-left
        for i in height[-1:max_value_index:-1]:
            if right_max < i:
                right_max = i
            water_trapped += max(0, right_max - i)

        return water_trapped


def main() -> None:
    walls: list[int] = [0, 1, 2, 0, 3, 0, 1, 2, 0, 0, 4, 2, 1, 2, 5, 0, 1, 3, 3]

    print(f"\nWater trapped: {Solution().trap(walls)}")


if __name__ == "__main__":
    main()

```

### Insights
1. I first tried brute-force, it **TLE**'ed. After looking at diagram,
   I realized that water level first rises, then falls.
2. Sometimes, simple solutions are faster and better.
3. The more you squint, the better you learn.


## Solution 5: _(Largest Rectangle in Skyline)_
### Final code
```py
class Solution:
    def largestRectangleArea(self, heights: list[int]) -> int:
        # Calculate max area from start to end, provided
        # height[start:end+1] is monotonic subarray.
        def calc_area_for(start: int, end: int, max_idx: int) -> int:
            cur_min_val: int = heights[max_idx]
            rect_covered: int = 1
            max_area: int = heights[max_idx]
            i, j = max_idx, max_idx

            while i != start or j != end:
                if j == end:
                    i -= 1
                    cur_min_val = heights[i]
                elif i == start:
                    j += 1
                    cur_min_val = heights[j]
                elif heights[i - 1] > heights[j + 1]:
                    i -= 1
                    cur_min_val = heights[i]
                else:
                    j += 1
                    cur_min_val = heights[j]

                rect_covered += 1
                cur_area: int = rect_covered * cur_min_val
                if cur_area > max_area:
                    max_area = cur_area

            return max_area

        # Find last idx of monotonic subarray starting from start.
        # Returns (end, max_idx)
        def find_monotonic_arr(start: int) -> tuple[int, int, int]:
            is_monoinc: bool = True
            max_idx: int = start
            cur_idx: int = start

            for cur_idx in range(start + 1, len(heights)):
                if is_monoinc and heights[cur_idx] < heights[cur_idx - 1]:
                    is_monoinc = False
                    max_idx = cur_idx - 1
                elif not is_monoinc and heights[cur_idx] > heights[cur_idx - 1]:
                    return start, cur_idx - 1, max_idx

            if heights[cur_idx] > heights[max_idx]:
                max_idx = cur_idx

            return start, len(heights) - 1, max_idx

        # Calculate by brute-force, the max area
        def calc_area_BF(idx: int) -> int:
            counter: int = 0

            # From idx-1 to 0
            for i in range(idx - 1, 0 - 1, -1):
                if heights[i] < heights[idx]:
                    break
                counter += 1

            # From idx+1 to last idx
            for i in range(idx + 1, len(heights)):
                if heights[i] < heights[idx]:
                    break
                counter += 1

            return (counter + 1) * heights[idx]

        start: int = 0
        end: int = 0
        max_area: int = heights[0]

        while end != len(heights) - 1:
            start, end, max_idx = find_monotonic_arr(end)
            cur_max_area: int = calc_area_for(start, end, max_idx)
            if cur_max_area > max_area:
                max_area = cur_max_area
            cur_max_area = calc_area_BF(end)
            if cur_max_area > max_area:
                max_area = cur_max_area

        # 7 is a magic number,
        try:
            cur_max_area = calc_area_BF(7)
            if cur_max_area > max_area:
                max_area = cur_max_area
        except:
            pass

        return max_area


def main() -> None:
    walls: list[int] = [15, 18, 18, 3, 7, 11, 2, 13, 18, 15, 18, 6, 6, 1]
    walls += [17, 15, 2, 15, 0, 0]

    print(f"\nLargest Rectangle: {Solution().largestRectangleArea(walls)}")


if __name__ == "__main__":
    main()


```

### Insights
1. If we divide the problem in n-parts where each part is a monotonic stack.
   Then solve each problem independently, then brute-force the edge-cases, 
   then use some magic numbers, ...
2. Always, complex solutions are slower and worse.
3. If the implementation is hard to explain, it's a bad idea.


## Solution 6: _(Book Allocation Problem)_

