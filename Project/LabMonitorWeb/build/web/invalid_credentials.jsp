<%-- 
    Document   : invalid_credentials
    Created on : 12 May 2025, 8:21:36 PM
    Author     : kadyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <title>Invalid Credentials</title>
    <!-- Keep existing styling -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Same styling as other error pages */
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}
        body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;align-items:center;justify-content:center;}
        .error-container{max-width:600px;padding:2rem;background:white;border-radius:8px;box-shadow:0 2px 4px rgba(0,0,0,0.1);text-align:center;}
        .error-icon{color:var(--accent);font-size:3rem;margin-bottom:1rem;}
        .back-btn{background:var(--secondary);color:white;padding:0.8rem 1.5rem;text-decoration:none;border-radius:4px;display:inline-block;margin-top:1rem;}
    </style>
</head>
<body>
    <div class="error-container">
        <i class="fas fa-user-slash error-icon"></i>
        <h2>Invalid Credentials</h2>
        <p><%= exception.getMessage() %></p>
        <a href="signin.jsp" class="back-btn">
            <i class="fas fa-arrow-left"></i> Return to Sign-In
        </a>
    </div>
</body>
</html>
