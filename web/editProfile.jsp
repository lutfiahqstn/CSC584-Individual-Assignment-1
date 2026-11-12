<%-- 
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Personal Profile</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="form-page">
        <div class="profile-card">
            <!-- header section -->
            <header class="page-header">
                <div class="header-box">
                    <h1>EDIT PERSONAL PROFILE</h1>
                    <div class="welcome-text">
                        <p>Update your personal information below.</p>
                    </div>
                </div>
            </header>
            
            <!-- edit profile form -->
            <div class="form-container">
                <form action="EditProfileServlet" method="POST">
                    <!-- full name -->
                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" id="name" name="name" value="<%= escapeHtml(request.getAttribute("name")) %>" placeholder="Enter your full name" required>
                    </div>
                    <!-- student ID -->
                    <div class="form-group">
                        <label for="studentId">Student ID</label>
                        <input type="text" id="studentId" name="studentId" value="<%= escapeHtml(request.getAttribute("studentId")) %>" placeholder="Enter your student ID" required>
                    </div>
                    <!-- programme -->
                    <div class="form-group">
                        <label for="programme">Programme</label>
                        <input type="text" id="programme" name="programme" value="<%= escapeHtml(request.getAttribute("programme")) %>" placeholder="Enter your programme" required>
                    </div>
                    <!-- email address -->
                    <div class="form-group">
                       <label for="email">Email Address</label>
                       <input type="email" id="email" name="email" value="<%= escapeHtml(request.getAttribute("email")) %>" placeholder="Enter your email address" required>
                    </div>
                    <!-- hobbies -->
                    <div class="form-group">
                        <label for="hobbies">Hobbies</label>
                        <input type="text" id="hobbies" name="hobbies" value="<%= escapeHtml(request.getAttribute("hobbies")) %>" placeholder="Enter your hobbies" required>
                    </div>
                    <!-- introduction -->
                    <div class="form-group introduction-group">
                        <label for="introduction">
                            Short Self-Introduction
                        </label>
                        <textarea id="introduction" name="introduction" placeholder="Tell us a little about yourself" required><%= escapeHtml(request.getAttribute("introduction")) %></textarea>
                    </div>
                    <!-- form buttons -->
                    <div class="button-group">
                        <button type="submit" class="submit-btn">
                            Update Profile
                        </button>
                        <a href="dashboard.jsp" class="back-btn">
                            Cancel
                        </a>
                    </div>
                </form>
            </div>
        </div> 
    </body>
</html>

<%!
    // escape special HTML characters before displaying user input
    private String escapeHtml(Object value) {

        if (value == null) {
            return "";
        }

        String text = value.toString();

        return text.replace("&", "&amp;")
                   .replace("<", "&lt;")
                   .replace(">", "&gt;")
                   .replace("\"", "&quot;")
                   .replace("'", "&#39;");
    }
%>
