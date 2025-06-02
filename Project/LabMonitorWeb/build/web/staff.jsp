<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Staff Portal</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;}.header{background:var(--primary);color:white;padding:1.5rem;box-shadow:0 2px 5px rgba(0,0,0,0.1);}.dashboard{flex:1;padding:2rem;max-width:800px;margin:0 auto;width:100%;}.action-card{background:white;padding:2rem;border-radius:8px;margin:1rem 0;text-align:center;box-shadow:0 2px 4px rgba(0,0,0,0.05);transition:transform 0.2s;text-decoration:none;color:inherit;display:block;}.action-card:hover{transform:translateY(-3px);box-shadow:0 4px 6px rgba(0,0,0,0.1);}.action-card i{color:var(--secondary);font-size:2rem;}footer{background:var(--primary);color:white;text-align:center;padding:1rem;margin-top:auto;}h2{color:var(--primary);margin:0.5rem 0;}
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-user-clock"></i> Staff Portal</h1>
        <a href="index.html" style="color:white;text-decoration:none;float:right;"><i class="fas fa-home"></i> Home</a>
    </header>
    <main class="dashboard">
        <a href="signin.jsp" class="action-card">
            <i class="fas fa-sign-in-alt"></i>
            <h2>Sign In</h2>
            <p>Record lab arrival</p>
        </a>
        <a href="signout.jsp" class="action-card">
            <i class="fas fa-sign-out-alt"></i>
            <h2>Sign Out</h2>
            <p>Record lab departure</p>
        </a>
    </main>
    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>document.getElementById('currentYear').textContent=new Date().getFullYear();</script>
</body>
</html>