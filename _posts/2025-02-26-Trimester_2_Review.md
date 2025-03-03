---
layout: post
title: Trimester 2 Review
courses: {'csa': {'week': 23}}
type: collab
categories: ['AP CSA']
permalink: /tri_2_review
comments: true
---

# Finished Burndown List Tasks (Completed in late Trimester 1 / Trimester 2)

#### Accomplishment 1: Integrating StudentInfo to manage student layouts on frontend and backend
  - Big connections 
    - Person: Assigning StudentInfo to each person added to the DB with a one-to-one relationship
    - Queue: If a person is clicked on the backend queue page, it links to their StudentInfo
      - ![Alt text](/akhil_2025/images/queue.png)
  - Use Cases for Mr. Mortensen
    - Seeing what students are sitting where
      - Future plans for an attendance system
    - Seeing the activity of any student at any time via the tasks feature

#### Accomplishment 2: Creating the assignment submissions page
  - Helped Rahul create the backend system that creates an assignment and gets submissions from frontend
  - Helped Aadit make the frontend page to allow for student submissions to an assignment

#### Accomplishment 3: Group sign-up page for the Queue system
  - Created the basic system to allow students to queue up for a presentation as a group
  - Mr. Mortensen can see the analytics (StudentInfo) of any student that presents on a group on backend

&nbsp;
&nbsp;
&nbsp;

---

&nbsp;
&nbsp;
&nbsp;
# Burndown List (Unfinished work / Tasks for Trimester 3)

#### Task 1: Separating the Queue feature to its own page + Increasing usability
  - Making a separate page that is distinct from the regular Queue so students can differentiate between individual assignments and group assignments

#### Task 2: Integration between Assignments and StudentInfo
  - Linking assignments to the tasks feature on StudentInfo so tasks can be linked to a specific assignment
    - Lets Mr. Mortensen see the relavancy of a given task

#### Task 3: Attendance based on Log-In
  - Mark a student as logged in vs. absent based on if they log into their NighthawkCoders account and sign in
    - Mark attendance on each table on the StudentInfo Table view so Mr. Mortensen can easily mark students absent
    - ![Alt text](/akhil_2025/images/attendance.png)

#### Task 4: JQuery/Thymeleaf Team Teach
  - Taught the use cases of both JQuery/Thymeleaf
    - JQuery: Simplifying HTML, animating frontend, Handling AJAX interactions, etc.
    - Thymeleaf: Using templates to fill out HTML tables


&nbsp;
&nbsp;
&nbsp;



---

&nbsp;
&nbsp;
&nbsp;

# Collegeboard Practice Results

#### MCQ Results
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

# Feedback from N@tM
  - Lots of positive feedback
    - Parents were interested in seeing how the different subsystems worked together
  - Advice from students
    - Make the queue system easier to use on backend (Who is presenting at any given moment?)
    - Separate the group queue page from the individual queue

# Review of the Trimester
  - Good: 
    - Added multiple new systems (assignment submissions, group queue feature, StudentInfo view, etc.)
    - Learned lots of CollegeBoard topics (Array/ArrayLists, Methods/Control Structures, Recursion)
  - Bad:
    - Not a lot of progress made on collaborative work
    - Lack of innovation (work for the sake of working and not to create a usable system)
  - Improvements for next trimester:
    - Communicate with others to divvy up work easier
    - Use the flowcharts to see how work can be split up
    - Ideate with others when coming up with a plan to execute


# ADD THESE

- analytics / issues
- N@TM feedback
