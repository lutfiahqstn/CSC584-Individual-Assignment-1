<%-- 
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Personal Profile Dashboard</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="dashboard-page">
        <div class="dashboard-shell">
            <!-- dashboard header -->
            <header class="dashboard-header">
                <div class="dashboard-header-inner">
                    <h1>PERSONAL PROFILE</h1>
                    <p>Personal Profile Web Application</p>
                </div>
            </header>
            
             <!-- dashboard content -->
            <main class="dashboard-content">
                <div class="dashboard-welcome">
                    <h2>Welcome to Your Dashboard!</h2>
                    <p>
                        Manage and update your personal information. 
                    </p>
                </div>
                
                <!-- dashboard navigation cards -->
                <section class="dashboard-grid">
                    <!-- my profile -->
                    <a href="<%= request.getContextPath() %>/ProfileServlet" class="dashboard-card">
                        <div class="card-icon">
                            👤
                        </div>
                        <br>
                        <h3>My Profile</h3>
                        <p>View your submitted personal information.</p>
                        <span>View Profile →</span>
                    </a>                    
                    <!-- edit profile -->
                    <a href="<%= request.getContextPath() %>/EditProfileServlet" class="dashboard-card">
                        <div class="card-icon"> 
                            ✏ 
                        </div>
                        <br>
                        <h3>Edit Profile</h3>
                        <p>Update your personal information whenever needed.</p>
                        <span>Open Editor →</span>
                    </a>                                     
                </section>
                <!-- application information -->
                <section class="dashboard-information">
                    <h3>About This Application</h3>
                    <p>
                        This application allows students to manage and present their personal information in an 
                        organized and user-friendly format.
                    </p>                   
                </section>                
            </main>        
        </div>            
    </body>
</html>
