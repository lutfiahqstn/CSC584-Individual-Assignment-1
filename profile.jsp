<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <div class="form-header">
                <h1>MY PERSONAL PROFILE</h1>
                <p>Here is your submitted personal information.</p>
            </div>
            <div class="profile-details">
                <div class="profile-item">
                    <label>Full Name</label>
                    <p><%= escapeHtml(request.getAttribute("name")) %></p>  
                </div>
                <div class="profile-item">
                    <label>Student ID</label>
                    <p><%= escapeHtml(request.getAttribute("studentId")) %></p>
                </div>
                <div class="profile-item">
                    <label>Programme</label>
                    <p><%= escapeHtml(request.getAttribute("programme")) %></p>
                </div>
                <div class="profile-item">
                    <label>Email Address</label>
                    <p><%= escapeHtml(request.getAttribute("email")) %></p>
                </div>
                <div class="profile-item">
                    <label>Hobbies</label>
                    <p><%= escapeHtml(request.getAttribute("hobbies")) %></p>
                </div>
                <div class="profile-item introduction-item">
                    <label>Short Self-Introduction</label>
                    <p class="introduction">
                       <%= escapeHtml(request.getAttribute("introduction")) %>
                    </p>
                </div>
            </div>
            
            <!-- profile action buttons -->
            <div class="button-group">
                <a href="<%= request.getContextPath() %>/dashboard.jsp" class="back-btn">
                    Back to Dashboard
                </a>
            </div>        
        </div>
    </body>
</html>
<%!
    //escape special html characters
    public String escapeHtml(Object value)
    {
        if (value == null)
        {
            return "";
        }
        
        String text = value.toString();
        text = text.replace("&", "&amp;");
        text = text.replace("<", "&lt;");
        text = text.replace(">", "&gt;");
        text = text.replace("\"", "&quot;");
        text = text.replace("'", "&#39;");
        return text;
    }
%>
