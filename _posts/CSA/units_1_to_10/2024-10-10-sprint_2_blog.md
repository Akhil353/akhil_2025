---
layout: post
title: Sprint 2 Review
toc: True
courses: {'csa': {'week': 7}}
permalink: /csa/sprint_2/
menu: nav/CSA/sprint_2.html
type: collab
---
# Overview of new skills

### Unit 5: Classes
 - How classes interact with Java
 - Methods to make classes useful
```java
public class Student {
    private String name;
    private int score;

    // Overloaded constructor
    public Student(String n, int s) {
        name = n;
        score = s;
    }

    // Accessor Methods
    public String getName() {
        return name;
    }

    // Mutator Methods
    public void setName(String n) {
        name = n;
    }

    public void setScore(int s) {
        if (s < 0 || s > 100) {
            score = 0; // default value
        } else {
            score = s;
        }
    }

    public boolean pass() {
        return (score >= 70);
    }
```

### Unit 7: Arraylists
  - Variable list storage (Like Python!)
  - How to use, implement, access, and more
```java
public class ArrayListHacks {
    private int findSum(ArrayList<Integer> values) {
        int sum = 0;
        for (int num: values) {
            sum += num; // Go through each number and add to the sum counter 
        }
        return sum;
    }

    public static void main(String[] args) {
        ArrayList<Integer> nums = new ArrayList<>();
        nums.add(0);
        nums.add(1);
        nums.add(2);
        nums.add(3);
        nums.add(5);
        nums.add(8);

        ArrayListHacks hacks = new ArrayListHacks();
        System.out.println(hacks.findSum(nums));
    }
}

ArrayListHacks.main(null);
```

### Unit 9: Inheritance
 - How to link multiple classes together
 - Helps make a system that works cohesively in different blocks

```java
class Textbook extends Book {
    private int edition;

    public Textbook(String title, double price, int edition) {
        super(title, price);
        this.edition = edition;
    }

    public int getEdition() {
        return edition;
    }

    public boolean canSubstituteFor(Textbook other) {
        return this.getTitle().equals(other.getTitle()) && this.edition >= other.edition;
    }

    @Override
    public String getBookInfo() {
        return "Title: " + getTitle() + ", Price: $" + getPrice() + ", Edition: " + edition;
    }

    @Override
    public String toString() {
        return getBookInfo();
    }
}
```

# Presentation Memories
 - <img width="735" alt="Screenshot 2024-10-09 at 12 51 30 PM" src="https://github.com/user-attachments/assets/ab319f91-dbcb-4e56-b811-e46495659da8">
 - Personal Experience from a classmate: I thought the rotating lesson idea was a good way to be able to learn a lot without getting too bored, and I liked the lesson overall as it allowed me to freely ask questions.

#

# Application (Beyond Perfunctory)
- Calendar to save/dispay events that are inputted by user
    - ArrayLists to store events
    - Classes to provide functionality to calendar
    - Iteration to get user input
    - See code below


```java
import java.util.ArrayList;
import java.util.Scanner;

class Event {
    private String name;
    private String date;
    private String time;
    private String description;

    // initialize the vars for events
    public Event(String name, String date, String time, String description) {
        this.name = name;
        this.date = date;
        this.time = time;
        this.description = description;
    }

    // getters for info for events
    public String getName() {
        return name;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "Event: " + name + ", Date: " + date + ", Time: " + time + ", Description: " + description;
    }
}

// organizer class to keep track of events
class Organizer {
    private ArrayList<Event> events;

    public Organizer() {
        events = new ArrayList<>(); // initializing event array
    }

    // Add a new event
    public void addEvent(Event event) {
        events.add(event);
        System.out.println("Event added: " + event);
    }

    // Display all events
    public void displayEvents() {
        if (events.isEmpty()) {
            System.out.println("No events scheduled.");
        } else {
            System.out.println("Scheduled Events:");
            for (Event event : events) {
                System.out.println(event);
            }
        }
    }

    // Find events on a specific date
    public void findEventsByDate(String date) {
        boolean found = false;
        System.out.println("Events on " + date + ":");
        for (Event event : events) {
            if (event.getDate().equals(date)) {
                System.out.println(event);
                found = true;
            }
        }
        if (!found) {
            System.out.println("No events found on this date.");
        }
    }

    // Recursive method to count events
    public int countEvents() {
        return countEventsRecursively(events.size());
    }

    private int countEventsRecursively(int index) {
        if (index == 0) {
            return 0;
        }
        return 1 + countEventsRecursively(index - 1);
    }
}

// ui for user to input events
public class EventOrganizerApp {
    public static void main(String[] args) {
        Organizer organizer = new Organizer();
        Scanner scanner = new Scanner(System.in);
        int choice;

        do { // display menu
            System.out.println("\nEvent Organizer Menu:");
            System.out.println("1. Add Event");
            System.out.println("2. Display Events");
            System.out.println("3. Find Events by Date");
            System.out.println("4. Count Events");
            System.out.println("5. Exit");
            System.out.print("Choose an option: ");
            choice = scanner.nextInt();
            scanner.nextLine(); // Consume newline

            switch (choice) { // perform different actions based on the user input from above
                case 1:
                    System.out.print("\n");
                    System.out.print("Enter event name: ");
                    String name = scanner.nextLine();
                    System.out.print("\n");
                    System.out.print("Enter event date (YYYY-MM-DD): ");
                    String date = scanner.nextLine();
                    System.out.print("\n");
                    System.out.print("Enter event time (HH:MM): ");
                    String time = scanner.nextLine();
                    System.out.print("\n");
                    System.out.print("Enter event description: ");
                    String description = scanner.nextLine();
                    Event event = new Event(name, date, time, description);
                    organizer.addEvent(event);
                    break;
                case 2:
                    organizer.displayEvents();
                    break;
                case 3:
                    System.out.print("\n");
                    System.out.print("Enter date to search (YYYY-MM-DD): ");
                    String searchDate = scanner.nextLine();
                    organizer.findEventsByDate(searchDate);
                    break;
                case 4:
                    System.out.print("\n");
                    System.out.println("Total number of events: " + organizer.countEvents());
                    break;
                case 5:
                    System.out.print("\n");
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.print("\n");
                    System.out.println("Invalid choice. Please try again.");
            }
        } while (choice != 5);

        scanner.close();
    }
}
EventOrganizerApp.main(null); // run the code
```
### Output: 
Event Organizer Menu:
1. Add Event
2. Display Events
3. Find Events by Date
4. Count Events
5. Exit
Choose an option: 
Enter event name: 
Enter event date (YYYY-MM-DD): 
Enter event time (HH:MM): 
Enter event description: Event added: Event: Coding, Date: 2024-10-09, Time: 12:00, Description: Code Code Code

Event Organizer Menu:
1. Add Event
2. Display Events
3. Find Events by Date
4. Count Events
5. Exit
Choose an option: Scheduled Events:
Event: Coding, Date: 2024-10-09, Time: 12:00, Description: Code Code Code

Event Organizer Menu:
1. Add Event
2. Display Events
3. Find Events by Date
4. Count Events
5. Exit
Choose an option: Scheduled Events:
Event: Coding, Date: 2024-10-09, Time: 12:00, Description: Code Code Code

Event Organizer Menu:
1. Add Event
2. Display Events
3. Find Events by Date
4. Count Events
5. Exit
Choose an option: 
Total number of events: 1

Event Organizer Menu:
1. Add Event
2. Display Events
3. Find Events by Date
4. Count Events
5. Exit
Choose an option: 
Exiting...


### Checklist Table

| **Assignment**             | **Points**    | **Grade** | **Evidence** |
|----------------------------|---------------|-----------|--------------|
| Pull Request (Integration) | 2             |     1.8    |       <img width="1298" alt="Screenshot 2024-10-08 at 10 55 26 AM" src="https://github.com/user-attachments/assets/badc5f6c-b542-4e90-a281-352837b3edfc">       |
| Relevancy Checklist (Peer) | 2             |     1.84     |      See issue replies below for more info      |
| Lesson (Group)             | 1             |      0.93     |       <img width="1166" alt="Screenshot 2024-10-08 at 11 00 37 AM" src="https://github.com/user-attachments/assets/2b912b03-0fdc-48be-8220-c8a123e313f5">       |
| Homework, Popcorn Hacks    | 1 x 8         |     7.35     |      <img width="1044" alt="Screenshot 2024-10-09 at 9 03 35 PM" src="https://github.com/user-attachments/assets/562cd2eb-2733-4ccd-9ef3-33a2e116ac0a"> <img width="1065" alt="Screenshot 2024-10-08 at 10 17 48 PM" src="https://github.com/user-attachments/assets/7a8eff9d-3cac-4f94-a798-b32cf0941d85">   <img width="803" alt="Screenshot 2024-10-08 at 10 17 39 PM" src="https://github.com/user-attachments/assets/8ad33736-4ffc-4dbf-85df-393807851fc8"> <img width="858" alt="Screenshot 2024-10-08 at 10 17 31 PM" src="https://github.com/user-attachments/assets/75f73530-6b7a-4779-bc50-fc274e37ea0f"> <img width="1412" alt="Screenshot 2024-10-08 at 10 17 16 PM" src="https://github.com/user-attachments/assets/76298a37-c3b7-402a-a235-a4ce3de1d0dd"> <img width="1165" alt="Screenshot 2024-10-08 at 10 16 15 PM" src="https://github.com/user-attachments/assets/9e674b45-1856-43ad-9017-7d7297d45fc0">     |
| Individual Contribution    | 1             |     0.94     |      <img width="1468" alt="Screenshot 2024-10-08 at 11 10 37 AM" src="https://github.com/user-attachments/assets/42d3ecc9-3d39-4032-9042-de4de33f2abb">      |
| Personal Notebooks / Blogs | 1             |     0.93     |        <img width="763" alt="Screenshot 2024-10-08 at 11 01 33 AM" src="https://github.com/user-attachments/assets/5620ac66-ec6b-4d3f-aca7-96874149202a">      |
| Total                      | 15            |     13.83      |       My main issue in these tasks was going above and beyond in an impactful way that would differentiate me from others. In the future, I want to improve on this by specifically working on theming all my work around specific ideas that could help me in my day-to-day life.      |


| **Skill**                  | **Points**    | **Grade** | **Evidence** |
|----------------------------|---------------|-----------|--------------|
| Work Habits (Analytics)    |   1           |     0.95     |       <img width="944" alt="Screenshot 2024-10-08 at 10 24 04 PM" src="https://github.com/user-attachments/assets/4ee876e8-02b3-4215-971d-3aa1dc8ae823">      |
| Team Planning (Issue)      |   1           |      0.93    |        <img width="1216" alt="Screenshot 2024-10-08 at 10 27 51 PM" src="https://github.com/user-attachments/assets/4649c027-dcd4-4575-ab58-d8750b5155c7">     |
| Presentation Memories      |   1           |      0.95     |       <img width="735" alt="Screenshot 2024-10-09 at 12 51 30 PM" src="https://github.com/user-attachments/assets/ab319f91-dbcb-4e56-b811-e46495659da8">  I really enjoyed making a fun/interactive lesson plan with my group mates, and it was also nice to be able to help any classmates who were confused on what I was teaching.  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Personal Experience from a classmate: I thought the rotating lesson idea was a good way to be able to learn a lot without getting too bored, and I liked the lesson overall as it allowed me to freely ask questions.  |
| Grading and Feedback       |   1           |      0.87     |     <img width="1416" alt="Screenshot 2024-10-10 at 12 03 54 PM" src="https://github.com/user-attachments/assets/4b2c1234-35b5-4d2c-889e-2d1558d09d0c">   <img width="1181" alt="Screenshot 2024-10-08 at 10 28 56 PM" src="https://github.com/user-attachments/assets/5363226d-3b17-4993-8306-c78b5bd7a458"> <img width="847" alt="Screenshot 2024-10-08 at 10 29 45 PM" src="https://github.com/user-attachments/assets/b7b328bd-abde-4c89-87db-dc03ca37ebbe">   <img width="851" alt="Screenshot 2024-10-08 at 10 29 54 PM" src="https://github.com/user-attachments/assets/5d82adfe-aaef-49d5-96ff-d3867ffa2842"> We could have worked more on this by making a more detailed plan on how to deal with grading, as the grading guidelines were not as strict as they should have been. |
| Beyond Perfunctory         |   1           |     0.9    |     <img width="555" alt="Screenshot 2024-10-09 at 9 17 04 PM" src="https://github.com/user-attachments/assets/b3089b67-dfed-4e24-ad75-01afbc33e1aa">  I wanted to show what I learned through a small project that would help me practice all my skills while also being useful. I ended up creating a rudimentary calendar system (debugged using GPT) that would both reinforce my knowledge in topics such as classes and arrays while also being useful for me to organize things such as what I have to do in a specific day or what homework I still have to do. This also worked as a sort of ideation process for me to help me come up with ideas for the Spring Boot Project we are starting to lean towards.   | 
| Total                      |   5           |     4.60      |       See grading above       |