---
layout: post
title: JavaScript Hacks
description: Hacks using CSS, HTML, and JS
type: tangibles
courses: { csa: {week: 1} }
categories: [JavaScript]
menu: nav/tools_setup.html
comments: True
---
<head>
    <title>Change the background color</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Click the Button to Change Background Color</h1>
    <button id="colorButton">Change Color</button>
    <script>
        function getRandomColor() {
            const letters = '0123456789ABCDEF';
            let color = '#';
            for (let i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }
        document.getElementById('colorButton').addEventListener('click', function() {
            document.body.style.backgroundColor = getRandomColor();
        });
    </script>
</body>
