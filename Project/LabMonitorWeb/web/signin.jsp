<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;}.header{background:var(--primary);color:white;padding:1.5rem;box-shadow:0 2px 5px rgba(0,0,0,0.1);}.form-container{max-width:600px;margin:2rem auto;background:white;padding:2rem;border-radius:8px;box-shadow:0 2px 4px rgba(0,0,0,0.05);}label{display:block;margin:1rem 0 0.5rem;color:var(--primary);}input[type="text"],input[type="submit"]{width:100%;padding:0.8rem;border:1px solid #ddd;border-radius:4px;margin-bottom:1rem;}input[type="submit"]{background:var(--secondary);color:white;border:none;cursor:pointer;}input[type="submit"]:hover{background:#2980b9;}footer{background:var(--primary);color:white;text-align:center;padding:1rem;margin-top:auto;}
       
        .error-alert {
            background: #f8d7da;
            color: #721c24;
            padding: 1rem;
            margin-bottom: 1.5rem;
            border-radius: 4px;
            border: 1px solid #f5c6cb;
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }
        .error-alert i {
            font-size: 1.2rem;
        }
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-sign-in-alt"></i> Lab Sign-In</h1>
        <a href="staff.jsp" style="color:white;text-decoration:none;float:right;">
            <i class="fas fa-arrow-left"></i> Back
        </a>
    </header>

    <div class="form-container">
        <%-- Error Message Display --%>
        <% if(request.getAttribute("error") != null) { %>
            <div class="error-alert">
                <i class="fas fa-exclamation-triangle"></i>
                ${error}
            </div>
        <% } %>
        
        <form action="AddStaffServlet" method="POST">
            <label>Staff Number:</label>
            <input type="text" name="staffno" required>
            
            <label>Surname:</label>
            <input type="text" name="surname" required>
            
            <label>Initials:</label>
            <input type="text" name="initials" required>
            
            <label>Lab Name:</label>
            <input type="text" name="labName" required>
            
            <input type="submit" value="Sign In">
        </form>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>
        document.getElementById('currentYear').textContent = new Date().getFullYear();
    </script>
</body>
</html>