---
layout: post
title: Trimester 2 MCQ/FRQ Work
courses: {'csa': {'week': 23}}
type: collab
categories: ['AP CSA']
permalink: /tri_2_review
comments: true
---

# Collegeboard Practice Results

## MCQ Results
  - Score: 35/39
  - Big improvements when it came to tasks such as recursion or code simulation
  
- Question 8: Operation Method on 2D int array
  - Got the wrong answer since I didn't make sure I got the indexes right for each loop
  - Make sure to write out each loop on paper to clarify which numbers are being used

```java
public class MatrixOperation {
    public static int[] operation(int[][] matrix, int r, int c) {
        int[] result = new int[matrix.length];

        for (int j = 0; j < matrix.length; j++) {
            result[j] = matrix[r][j] * matrix[j][c];
        }
        return result;
    }

    public static void main(String[] args) {
        int[][] mat = {
            {3, 2, 1, 4},
            {1, 2, 3, 4},
            {2, 2, 1, 2},
            {1, 1, 1, 1}
        };

        int[] arr = operation(mat, 1, 2);

        for (int num : arr) {
            System.out.print(num + " ");
        }
    }
}

1
1

2
3

3
1

4
1

1
6
3
4
```

- Question 9: Generate Random Number of cubes
  - Got the question wrong since I forgot that the Math.random() function starts at 0 and goes up to but doesn't include the input
  - Review Java commands to see how exactly they work and what they do
  - ![Alt text](/akhil_2025/images/tri2_review_1.png)

- Question 18: Print statement with mathematical operators
  - Got the wrong answer since I forgot that operations return integer values if only performed with integers
  - Review how Java math works (integer math, float math, etc.)

```java
System.out.println(404/10);
System.out.println(40*10);
System.out.println(400+1);


40
400
401
```

 - Question 19: Loop that prints nothing
   - Got the question wrong since I forgot to account for the if condition in the while loop
   - Make sure to check all if/while statements instead of focusing in on just what the question modifies

```java
public class WhileLoopConditions {
    public static void main(String[] args) {
        System.out.println("Condition I: x < 0");
        int x1 = 1;
        while (x1 < 0) { // Condition I
            if (x1 % 2 == 0) {
                System.out.print(x1 + " ");
            }
            x1 = x1 + 2;
        }

        System.out.println("\nCondition II: x <= 1");
        int x2 = 1;
        while (x2 <= 1) { // Condition II
            if (x2 % 2 == 0) {
                System.out.print(x2 + " ");
            }
            x2 = x2 + 2;
        }

        System.out.println("\nCondition III: x < 10");
        int x3 = 1;
        while (x3 < 10) { // Condition III
            if (x3 % 2 == 0) {
                System.out.print(x3 + " ");
            }
            x3 = x3 + 2;
        }
    }
}

WhileLoopConditions.main(null);


Condition I: x < 0

Condition II: x <= 1

Condition III: x < 10
```







## FRQ 2015 

Part 1: Sum of Elements in a 1D Array

Code below gets the sum of a 1D Array:

```java
/**
 * Returns the sum of the entries in the one-dimensional array arr.
 */
public static int arraySum(int[] arr) {
    int sum = 0;
    for (int i = 0; i < arr.length; i++) {
        sum += arr[i];
    }
    return sum;
}
```

2/2 points achieved, 1 point for the method header and another point for writing the correct algorithm for getting the sum of a 1D array.

Part 2: Calculating Row Sums in a 2D Array

Code below iterates over a 2D array and gets the sum of each row using the method defined above:

```java
/**
 * Returns a one-dimensional array in which the entry at index k is the sum of
 * the entries of row k of the two-dimensional array arr2D.
 */
public static int[] rowSums(int[][] arr2D) {
    int[] sums = new int[arr2D.length];
    
    for (int r = 0; r < arr2D.length; r++) {
        sums[r] = arraySum(arr2D[r]);
    }
    
    return sums;
}
```
4/4 points: 1 point for the method header, 1 point for the array creation, 1 point for the correct calculations, and 1 point for the use of the previos method.

Part C: Checking if a 2D Array is Diverse

Code below finishes the question by implementing the isDiverse method to check if each row has a unique sum:
```java
/**
 * Returns true if all rows in arr2D have different row sums;
 * false otherwise.
 */
public static boolean isDiverse(int[][] arr2D) {
    int[] sums = rowSums(arr2D);
    
    for (int i = 0; i < sums.length - 1; i++) {
        for (int j = i + 1; j < sums.length; j++) {
            if (sums[i] == sums[j]) {
                return false;
            }
        }
    }
    
    return true;
}
```

Using the rowSums method from part B, I created the isDiverse method that checks if each row is unique in sums. This response gets me all 4 points for part 3.

In the examples, mat1 has row sums [16, 32, 28, 20], which are all different, so isDiverse(mat1) returns true. But mat2 has row sums [14, 35, 36, 14], and since the first and last rows both sum to 14, isDiverse(mat2) returns false.

10/10 score:

Writing correct method headers (3/3)
Creating appropriate arrays (1/1)
Implementing correct algorithms (3/3)
Correct use of prior methods (2/2)
Correct answer for all test cases (1/1)
```java
public class ArrayProcessor {
    /**
     * Returns the sum of the entries in the one-dimensional array arr.
     */
    public static int arraySum(int[] arr) {
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
            sum += arr[i];
        }
        return sum;
    }

    /**
     * Returns a one-dimensional array in which the entry at index k is the sum of
     * the entries of row k of the two-dimensional array arr2D.
     */
    public static int[] rowSums(int[][] arr2D) {
        int[] sums = new int[arr2D.length];
        
        for (int r = 0; r < arr2D.length; r++) {
            sums[r] = arraySum(arr2D[r]);
        }
        
        return sums;
    }

    /**
     * Returns true if all rows in arr2D have different row sums;
     * false otherwise.
     */
    public static boolean isDiverse(int[][] arr2D) {
        int[] sums = rowSums(arr2D);
        
        for (int i = 0; i < sums.length - 1; i++) {
            for (int j = i + 1; j < sums.length; j++) {
                if (sums[i] == sums[j]) {
                    return false;
                }
            }
        }
        
        return true;
    }

    // Main method to test the implementation with the sample arrays
    public static void main(String[] args) {
        // Test array for arraySum
        int[] testArray = {1, 2, 3, 4, 5};
        System.out.println("Test arraySum:");
        System.out.println("Sum of testArray: " + arraySum(testArray) + " (Expected: 15)");
        System.out.println();
        
        // Sample arrays from the 2015 AP CSA FRQ
        int[][] mat1 = {
            {1, 3, 2, 7, 3},
            {10, 10, 4, 6, 2},
            {5, 3, 5, 9, 6},
            {7, 6, 4, 2, 1}
        };
        
        int[][] mat2 = {
            {1, 1, 5, 3, 4},
            {12, 7, 6, 1, 9},
            {8, 11, 10, 2, 5},
            {3, 2, 3, 0, 6}
        };
        
        // Test rowSums
        System.out.println("Test rowSums:");
        System.out.println("Row sums for mat1:");
        int[] mat1Sums = rowSums(mat1);
        printArray(mat1Sums);
        System.out.println("Expected: [16, 32, 28, 20]");
        
        System.out.println("\nRow sums for mat2:");
        int[] mat2Sums = rowSums(mat2);
        printArray(mat2Sums);
        System.out.println("Expected: [14, 35, 36, 14]");
        
        // Test isDiverse
        System.out.println("\nTest isDiverse:");
        System.out.println("Is mat1 diverse? " + isDiverse(mat1) + " (Expected: true)");
        System.out.println("Is mat2 diverse? " + isDiverse(mat2) + " (Expected: false)");
    }
    
    // Helper method to print arrays
    public static void printArray(int[] arr) {
        System.out.print("[");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]);
            if (i < arr.length - 1) {
                System.out.print(", ");
            }
        }
        System.out.println("]");
    }
}
ArrayProcessor.main(null);
Test arraySum:
Sum of testArray: 15 (Expected: 15)

Test rowSums:
Row sums for mat1:
[16, 32, 28, 20]
Expected: [16, 32, 28, 20]

Row sums for mat2:
[14, 35, 36, 14]
Expected: [14, 35, 36, 14]

Test isDiverse:
Is mat1 diverse? true (Expected: true)
Is mat2 diverse? false (Expected: false)
```