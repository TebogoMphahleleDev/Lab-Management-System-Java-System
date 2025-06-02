<%@page import="java.util.List"%>
<%@page import="tut.ac.staff.entities.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Staff Attendance Records</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --bg: #f5f6fa;
            --signed-in: #27ae60;
            --signed-out: #e74c3c;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background: var(--bg);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        .header {
            background: var(--primary);
            color: white;
            padding: 1.5rem;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .staff-grid {
            max-width: 1000px;
            margin: 2rem auto;
            width: 100%;
        }
        
        .staff-card {
            background: white;
            padding: 1.5rem;
            margin: 1rem 0;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
            position: relative;
        }
        
        .staff-status {
            position: absolute;
            top: 1rem;
            right: 1rem;
            font-size: 0.9rem;
            padding: 0.3rem 0.8rem;
            border-radius: 1rem;
        }
        
        .status-signed-in {
            background: var(--signed-in);
            color: white;
        }
        
        .status-signed-out {
            background: var(--signed-out);
            color: white;
        }
        
        .staff-info {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1rem;
            margin-bottom: 1rem;
        }
        
        .back-btn {
            background: var(--secondary);
            color: white;
            padding: 0.8rem 1.5rem;
            text-decoration: none;
            border-radius: 4px;
            display: inline-block;
            margin-top: 1rem;
        }
        
        footer {
            background: var(--primary);
            color: white;
            text-align: center;
            padding: 1rem;
            margin-top: auto;
        }
        
        .timestamps {
            margin-top: 1rem;
            border-top: 1px solid #eee;
            padding-top: 1rem;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-clipboard-list"></i> Staff Attendance Records</h1>
        <a href="security.jsp" style="color:white;text-decoration:none;float:right;">
            <i class="fas fa-arrow-left"></i> Back
        </a>
    </header>

    <div class="staff-grid">
        <% 
        List<Staff> staffList = (List<Staff>)request.getAttribute("staff");
        for(Staff staff : staffList) { 
        %>
        <div class="staff-card">
            <div class="staff-status <%= staff.getSignOutDate() == null ? "status-signed-in" : "status-signed-out" %>">
                <%= staff.getSignOutDate() == null ? 
                    "<i class='fas fa-sign-in-alt'></i> Signed In" : 
                    "<i class='fas fa-sign-out-alt'></i> Signed Out" %>
            </div>
            
            <div class="staff-info">
                <div>
                    <h3><%= staff.getSurname() %>, <%= staff.getInitials() %></h3>
                    <p>Staff #: <%= staff.getId() %></p>
                    <p><i class="fas fa-laptop-house"></i> <%= staff.getLabName() %></p>
                </div>
            </div>
            
            <div class="timestamps">
                <p><i class="fas fa-sign-in-alt"></i> Signed In: 
                    <%= staff.getSigninDate() %>
                </p>
                <% if(staff.getSignOutDate() != null) { %>
                    <p><i class="fas fa-sign-out-alt"></i> Signed Out: 
                        <%= staff.getSignOutDate() %>
                    </p>
                <% } else { %>
                    <p><i class="fas fa-clock"></i> Currently Signed In</p>
                <% } %>
            </div>
        </div>
        <% } %>
        
        <a href="security.jsp" class="back-btn">
            <i class="fas fa-arrow-left"></i> Back to Security Dashboard
        </a>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>
        document.getElementById('currentYear').textContent = new Date().getFullYear();
    </script>
</body>
</html>