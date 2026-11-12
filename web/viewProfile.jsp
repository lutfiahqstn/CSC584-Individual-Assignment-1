<%--
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Personal Profile</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!-- main display container -->
        <div class="container">
            <!-- profile header -->
            <div class="form-header">
                <h1>MY PERSONAL PROFILE</h1>
                <p>
                    Your Submitted Personal Information
                </p>
            </div>
            <!-- profile information section -->
            <div class="profile-details">
                <!-- full name -->
                <div class="profile-item">
                    <label>Full Name</label>
                    <p>
                        <%= escapeHtml(request.getAttribute("name")) %>
                    </p>
                </div>
                <!-- student ID -->
                <div class="profile-item">
                    <label>Student ID</label>
                    <p>
                        <%= escapeHtml(request.getAttribute("studentId")) %>
                    </p>
                </div>
                <!-- programme -->
                <div class="profile-item">
                    <label>Programme</label>
                    <p>
                        <%= escapeHtml(request.getAttribute("programme")) %>
                    </p>
                </div>
                <!-- email address -->
                <div class="profile-item">
                    <label>Email Address</label>
                    <p>
                        <%= escapeHtml(request.getAttribute("email")) %>
                    </p>
                </div>
                <!-- hobbies -->
                <div class="profile-item">
                    <label>Hobbies</label>
                    <p>
                        <%= escapeHtml(request.getAttribute("hobbies")) %>
                    </p>
                </div>
                <!-- short self-introduction -->
                <div class="profile-item">
                    <label>Short Self-Introduction</label>
                    <p class="introduction"><%= escapeHtml(request.getAttribute("introduction")) %></p>
                </div>
            </div>
            
            <!-- back to dashboard button -->
            <div class="button-group">
                <a href="<%= request.getContextPath() %>/dashboard.jsp" class="back-btn">
                    Back to Dashboard
                </a>
            </div>
        </div>
    </body>
</html>

<%!
    // method to escape HTML characters
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

