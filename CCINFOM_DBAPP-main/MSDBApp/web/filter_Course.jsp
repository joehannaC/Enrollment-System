<%-- 
    Document   : filtercourse
    Created on : 11 21, 23, 8:39:56 AM
    Author     : ccslearner
--%>

<%@page import="java.util.*" %>
<%@page import="course.filterCourse" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Filter Course</title>

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

    /* Container for course details */
    .course-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      max-width: 800px;
      margin: 20px auto;
    }

    /* Style for each course detail */
    .course {
      border: 10px solid #FFFFFF;
      border-radius: 8px;
      padding: 15px;
      margin: 10px;
      width: 200px;
      text-align: left;
    }

    /* White font color for specific text */
    .course p {
      color: #333;
      font-size: 16px;
      margin: 5px 0;
    }
  </style>
</head>

<body>

 <!-- Header Title -->
  <header>
    <h1>Filter Courses</h1>
  </header>

  <form action="" method="post">
    <label for="units">Units: </label>
    <input type="text" id="units" name="units">
    <input type="submit" value="Filter">
  </form>

  <div class="course-container">
    <%
      if (request.getMethod().equalsIgnoreCase("post")) {
        // Convert units to int
        int units = 0;
        try {
          units = Integer.parseInt(request.getParameter("units"));
        } catch (NumberFormatException e) {
          // Handle the exception, e.g., display an error message
        }

        filterCourse filter = new filterCourse();
        filter.setUnits(units);
        List<String> courseDetails = filter.filterCourses();

        if (courseDetails.isEmpty()) {
    %>
        <script>
          alert("No courses found");
          location.reload();
        </script>
    <%
        } else {
          for (String courseDetail : courseDetails) {
    %>
            <div class="course">
              <p><%= courseDetail %></p>
              <script>
                alert("Courses found.");
                window.location.href = "course_Catalog.jsp";
              </script>
            </div>
    <%
          }
        }
      }
    %>
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
