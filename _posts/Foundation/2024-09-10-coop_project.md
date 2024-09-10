---
layout: post
toc: True
title: Coop Coding
description: Working with a partner to create a program
type: ccc
permalink: /coop
---
<style>
body {
    font-family: Arial, sans-serif;
    margin: 20px;
    padding: 0;
    background-color: #222222;
}

h1, h2 {
    text-align: center;
}

.form-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 20px;
}

label, input {
    margin: 5px 0;
}

input {
    padding: 5px;
    width: 200px;
}

button {
    padding: 10px 20px;
    margin-top: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

#schedule-container {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

.schedule-day {
    background-color: #222222;
    border: 1px solid #ccc;
    padding: 10px;
    margin: 10px;
    width: 200px;
}

.schedule-day h3 {
    margin-top: 0;
}
</style>
<html>
<h1>Schedule Manager</h1>
    <div class="form-container">
        <label for="event-name">Event Name:</label>
        <input type="text" id="event-name" placeholder="Enter event name">
        <label for="event-date">Event Date:</label>
        <input type="date" id="event-date">
        <label for="event-time">Event Time:</label>
        <input type="time" id="event-time">
        <button onclick="addEvent()">Add Event</button>
    </div>
<h2>Events for the Next Week</h2>
<div id="schedule-container">
        <!-- Events will be displayed here -->
</div>
</html>

<script>
// Initialize schedule object to store events by date
let schedule = {};
// Function to add an event to the schedule
function addEvent() {
    const eventName = document.getElementById('event-name').value;
    const eventDate = document.getElementById('event-date').value;
    const eventTime = document.getElementById('event-time').value;
    if (!eventName || !eventDate || !eventTime) {
        alert("Please fill in all fields");
        return;
    }
    // Add event to the schedule object
    if (!schedule[eventDate]) {
        schedule[eventDate] = [];
    }
    schedule[eventDate].push({ name: eventName, time: eventTime });
    // Clear input fields
    document.getElementById('event-name').value = '';
    document.getElementById('event-date').value = '';
    document.getElementById('event-time').value = '';
    displaySchedule();
}
// Function to display the schedule for the next 7 days
function displaySchedule() {
    const scheduleContainer = document.getElementById('schedule-container');
    scheduleContainer.innerHTML = '';  // Clear previous schedule
    // Get today's date
    const today = new Date();
    for (let i = 0; i < 7; i++) {
        const currentDate = new Date(today);
        currentDate.setDate(today.getDate() + i);
        const dateString = currentDate.toISOString().split('T')[0];  // Format the date to YYYY-MM-DD
        // Create a new div for each day
        const dayDiv = document.createElement('div');
        dayDiv.className = 'schedule-day';
        const dayHeader = document.createElement('h3');
        dayHeader.innerText = currentDate.toDateString();  // Show the date in readable format
        dayDiv.appendChild(dayHeader);
        // Add events for this date if any
        if (schedule[dateString]) {
            schedule[dateString].forEach(event => {
                const eventPara = document.createElement('p');
                eventPara.innerText = `${event.name} - ${event.time}`;
                dayDiv.appendChild(eventPara);
            });
        } else {
            const noEventPara = document.createElement('p');
            noEventPara.innerText = "No events";
            dayDiv.appendChild(noEventPara);
        }
        scheduleContainer.appendChild(dayDiv);
    }
}

</script>