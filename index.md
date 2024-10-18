---
layout: base
title: CSA
description: Home Page
hide: true
comments: true
---
<style>
  .page-header {
    color: $header-heading-color;
    text-align: center;
    background-color: $header-bg-color;
    background-image: conic-gradient(from 215deg, $header-bg-color, $header-bg-color-secondary) !important;
  }

  .grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); /* Dynamic columns */
    gap: 10 px;
  }

  .grid-item {
    text-align: center;
    position: relative;
  }

  .grid-item img {
    width: 100%;
    height: 100px; /* Fixed height for uniformity */
    object-fit: contain; /* Ensure the image fits within the fixed height */
    cursor: pointer; /* Indicate that the image is clickable */
  }

  .grid-item p {
    margin: 5px 0; /* Add some margin for spacing */
  }

  .image-gallery {
    display: flex;
    flex-wrap: nowrap;
    overflow-x: auto;
    gap: 10px;
  }

  .image-gallery img {
    max-height: 150px;
    object-fit: cover;
    border-radius: 5px;
  }

  .description {
    display: none;
    margin-top: 10px;
    color: #f0f0f0;
    font-size: 14px;
    text-align: center;
  }

  .notebooks {
      display: none;
      margin-top: 10px;
    }
  .notebooks a {
      display: block;
      margin: 10px 0;
      text-decoration: none;
      color: blue;
    }
  .category {
        border: 1px solid #5f73b8;
        background: #424549;
        color: white;
        width: 270px;
        padding: 15px 20px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 15px;
        transition-duration: 0.1s;
        cursor: pointer;
        font-family: serif;
    }
</style>

- [My Github](https://github.com/Akhil353)



## Plans for CSA

  - Learn new coding algorithms for different functions
  - Be more consistent with commits
  - Learn Java


<div id="notebooks-container" class="category">CollegeBoard Info Review</div>

<div id="notebooks" class="notebooks">
  <button onclick="window.location.href='{{site.baseurl}}/csa/units/quiz1'" class="category">Unit 1 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit2/period3/homework'" class="category">Unit 2 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit3/period3/homework/'" class="category">Unit 3 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit4/period3/homework/'" class="category">Unit 4 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit5/period3/homework/'" class="category">Unit 5 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit6lesson'" class="category">Unit 6 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit7/period3/homework/'" class="category">Unit 7 Hacks</button>
  <button onclick="window.location.href='{{site.baseurl}}/csa/unit8/period3/homework/'" class="category">Unit 8 Hacks</button>
  

</div>

<script>
    const categoryDiv = document.getElementById('notebooks-container');
    const notebooksDiv = document.getElementById('notebooks');
    const submenuDiv = document.getElementById('submenu');

    categoryDiv.addEventListener('click', function() {
      if (notebooksDiv.style.display === 'none' || notebooksDiv.style.display === '') {
        notebooksDiv.style.display = 'block';
      } else {
        notebooksDiv.style.display = 'none';
        submenuDiv.style.display = 'none';
      }
    });
    const categoryItems = notebooksDiv.querySelectorAll('.category');
    categoryItems.forEach(item => {
      item.addEventListener('click', function() {
        submenuDiv.style.display = 'block';
      });
    });
  </script>