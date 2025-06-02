<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Out</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;}.header{background:var(--primary);color:white;padding:1.5rem;box-shadow:0 2px 5px rgba(0,0,0,0.1);}.form-container{max-width:400px;margin:2rem auto;background:white;padding:2rem;border-radius:8px;box-shadow:0 2px 4px rgba(0,0,0,0.05);}input[type="text"],input[type="submit"]{width:100%;padding:0.8rem;border:1px solid #ddd;border-radius:4px;margin-bottom:1rem;}input[type="submit"]{background:var(--accent);color:white;border:none;cursor:pointer;}input[type="submit"]:hover{background:#c0392b;}footer{background:var(--primary);color:white;text-align:center;padding:1rem;margin-top:auto;}
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-sign-out-alt"></i> Lab Sign-Out</h1>
        <a href="staff.jsp" style="color:white;text-decoration:none;float:right;"><i class="fas fa-arrow-left"></i> Back</a>
    </header>

    <div class="form-container">
        <form action="SignOutServlet" method="POST">
            <label>Key:</label>
            <input type="text" name="staffno" required>
            <input type="submit" value="Sign Out">
        </form>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>document.getElementById('currentYear').textContent=new Date().getFullYear();</script>
</body>
</html>