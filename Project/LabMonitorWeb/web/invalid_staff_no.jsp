<%-- 
    Document   : invalid_staff_no
    Created on : 12 May 2025, 9:44:02 AM
    Author     : kadyk
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Invalid Staff Number</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --bg: #f5f6fa;
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
            text-align: center;
        }
        
        .error-container {
            flex: 1;
            max-width: 600px;
            margin: 2rem auto;
            padding: 2rem;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
            text-align: center;
        }
        
        .error-icon {
            color: var(--accent);
            font-size: 3rem;
            margin-bottom: 1rem;
        }
        
        .nav-links {
            margin-top: 2rem;
            display: flex;
            gap: 1rem;
            justify-content: center;
        }
        
        .nav-links a {
            background: var(--secondary);
            color: white;
            padding: 0.8rem 1.5rem;
            text-decoration: none;
            border-radius: 4px;
            transition: background 0.3s ease;
        }
        
        .nav-links a:hover {
            background: #2980b9;
        }
        
        footer {
            background: var(--primary);
            color: white;
            text-align: center;
            padding: 1rem;
            margin-top: auto;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-exclamation-triangle"></i> Invalid Staff Number</h1>
    </header>

    <div class="error-container">
        <i class="fas fa-id-card error-icon"></i>
        <h2>Invalid Staff Number Detected!</h2>
        <p>The staff number you entered is not recognized in our system.</p>
        
        <div class="nav-links">
            <a href="index.html">
                <i class="fas fa-home"></i> Home Page
            </a>
            <a href="signin.jsp">
                <i class="fas fa-sign-in-alt"></i> Sign-In Page
            </a>
        </div>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    
    <script>
        document.getElementById('currentYear').textContent = new Date().getFullYear();
    </script>
</body>
</html>
