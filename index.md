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
</style>
## About Me
- <p>Name: Akhil Singamneni</p>
- <p>CSA is lit</p>
- <p>Junior :)</p>
- <p>Class of 2026</p>

<p>Select your preferred colors for the page header:</p>
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
</script>

## Plans for CSA

  - Learn new coding algorithms for different functions
  - Be more consistent with commits
  - Learn Java

# Me
![image](./images/IMG_7261.png)

# A Youtube Video I liked
<iframe width="560" height="315" src="https://www.youtube.com/embed/qf7ws2DF-zk?si=ltS-quE6vk3uYMWn" frameborder="0" allowfullscreen></iframe>