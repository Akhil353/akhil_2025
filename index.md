---
layout: base
title: CSA
description: Home Page
hide: true
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
    gap: 10px;
  }

  .grid-item {
    text-align: center;
  }

  .grid-item img {
    width: 100%;
    height: 100px; /* Fixed height for uniformity */
    object-fit: contain; /* Ensure the image fits within the fixed height */
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
</style>

## About Me
- Name: **Akhil Singamneni**
- <p>CSA is lit</p>
- <p>Junior :)</p>
- Face: <img src="./images/IMG_7261.png" alt="Image" style="max-width: 100%; height: auto; width: 200px;">
  - Classes:
    - 📖 APEL (Mansour)
    - 📝 AP Calculus BC (Lanzi)
    - 💻 Can you guess?
    - 🍃 AP Physics Mechanics (Eckman)
    - 🌎 US History (Ayres)
- <p>Class of 2026</p>
- Countries I've been to:
<div class="image-gallery" id="image_gallery">
    <!-- content will be added here by JavaScript -->
</div>
- [My Github](https://github.com/Akhil353)

<p>Try out some other page header colors:</p>
<input type="color" id="headerColorPicker1" name="headerColorPicker1" value="#2921ff">
<input type="color" id="headerColorPicker2" name="headerColorPicker2" value="#00ff62">

<script>
  function updateGradient() {
    var color1 = document.getElementById('headerColorPicker1').value;
    var color2 = document.getElementById('headerColorPicker2').value;
    var gradient = `conic-gradient(from 215deg, ${color1}, ${color2})`;
    document.querySelector('.page-header').style.setProperty('background-image', gradient);
  }

  document.getElementById('headerColorPicker1').addEventListener('input', updateGradient);
  document.getElementById('headerColorPicker2').addEventListener('input', updateGradient);


  var container = document.getElementById("image_gallery");

  var http_source = "https://upload.wikimedia.org/wikipedia/commons/";
  var places_visited = [
    {"flag": "a/a4/Flag_of_the_United_States.svg", "description": "United States of America"},
    {"flag": "4/41/Flag_of_India.svg", "description": "India"},
    {"flag": "c/c3/Flag_of_France.svg", "description": "France"},
    {"flag": "5/5c/Flag_of_Greece.svg", "description": "Greece"},
    {"flag": "f/f3/Flag_of_Switzerland.svg", "description": "Switzerland"},
    {"flag": "f/fc/Flag_of_Mexico.svg", "description": "Mexico"},
  ];

  for (const location of places_visited) {
    var imageGallery = document.createElement("div");
    imageGallery.className = "grid-item";

    var img = document.createElement("img");
    img.src = http_source + location.flag;
    img.alt = location.description + " Flag";

    var description = document.createElement("p");
    description.textContent = location.description;


    imageGallery.appendChild(img);
    imageGallery.appendChild(description);

    container.appendChild(imageGallery);
  }
</script>

## Plans for CSA

  - Learn new coding algorithms for different functions
  - Be more consistent with commits
  - Learn Java

# A Youtube Video I liked
<iframe width="560" height="315" src="https://www.youtube.com/embed/qf7ws2DF-zk?si=ltS-quE6vk3uYMWn" frameborder="0" allowfullscreen></iframe>
