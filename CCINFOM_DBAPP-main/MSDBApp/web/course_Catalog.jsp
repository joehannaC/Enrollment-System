<%-- 
    Document   : course_Catalog
    Created on : 11 22, 23, 4:54:05 AM
    Author     : ccslearner
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Course Catalog</title>

  <!-- Styles for the website -->
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      text-align: center;
      background-color: #FCCDFF;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    /* Styles for header */
    header {
      background-color: #B46CA8;
      padding: 15px;
      color: white;
      font-size: 24px;
      position: absolute;
      top: 0;
      width: 100%;
    }

    /* Bottom container with border */
    .bottom-container {
      width: 100%;
      background-color: #B46CA8;
      padding: 10px;
      position: fixed;
      bottom: 0;
    }

    /* White font color for specific text */
    .bottom-container p {
      color: white;
      font-size: 17px;
    }

    /* Adjust margin-bottom for the header */
    header h1 {
      font-size: 55px;
      margin-bottom: 30px;
    }

    /* Style for Date and Time display */
    #datetime {
      color: white;
      font-size: 18px;
    }

    /* Style for buttons and images in a row */
    .buttons {
      display: flex;
      justify-content: space-around;
      align-items: center;
      flex-wrap: wrap;
    }

    .btn-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin: 100px; /* Added margin for spacing */
    }

    .btn {
      font-size: 18px;
      border: 2px solid white;
      outline: none;
      color: white;
      padding: 10px 20px;
      background-color: #B46CA8;
      font-family: inherit;
      cursor: pointer;
      text-decoration: none;
      border-radius: 5px;
      margin-top: 50px; /* Added margin between image and button */
    }

    .btn:hover {
      background-color: #ddd;
      color: #B46CA8;
    }

    /* Style for images */
    .button-img {
      width: 250px; /* Adjust the width as needed */
      height: auto;
    }
  </style>
</head>

<body>

  <!-- Header Title -->
  <header>
    <h1>Course Catalog</h1>
  </header>

  <!-- Container for the Course Catalog section -->
  <div class="container">

    <!-- Buttons and images for searching and filtering courses -->
    <div class="buttons">
      <div class="btn-container">
        <img src="assets/Filter.png" alt="Filter Course" class="button-img">
        <a href="filter_Course.jsp" class="btn">Filter Course</a>
      </div>

      <div class="btn-container">
        <img src="assets/Search.png" alt="Search Course" class="button-img">
        <a href="search_Course.jsp" class="btn">Search Course</a>
      </div>

      <div class="btn-container">
        <img src="assets/Retrieve.png" alt="Retrieve Course" class="button-img">
        <a href="retrieve_Course.jsp" class="btn">Retrieve Course</a>
      </div>

      <div class="btn-container">
        <img src="assets/search-student-course.png" alt="Search Course by Student" class="button-img">
        <a href="Course_Management.jsp" class="btn">Course Management</a>
      </div>

    </div>

  </div>

  <!-- Bottom container with border -->
  <div class="bottom-container">
    <p style="font-size: 17px;">CCINFOM - DB Application Group 5</p>
    <!-- Date and Time display -->
    <div id="datetime"></div>
  </div>

  <!-- Script to update date and time -->
  <script>
    function updateDateTime() {
      const now = new Date();
      const options = {
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day: 'numeric',
        hour: 'numeric',
        minute: 'numeric',
        second: 'numeric',
        timeZoneName: 'short'
      };
      const formattedDate = now.toLocaleDateString('en-US', options);
      document.getElementById('datetime').innerHTML = formattedDate;
    }

    // Update date and time every second
    setInterval(updateDateTime, 1000);

    // Initial call to display date and time
    updateDateTime();
  </script>

</body>

</html>
