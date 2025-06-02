<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign-Out Confirmation</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;}.header{background:var(--primary);color:white;padding:1.5rem;box-shadow:0 2px 5px rgba(0,0,0,0.1);}.confirmation-container{max-width:600px;margin:2rem auto;text-align:center;background:white;padding:2rem;border-radius:8px;box-shadow:0 2px 4px rgba(0,0,0,0.05);}.back-btn{background:var(--secondary);color:white;padding:0.8rem 1.5rem;text-decoration:none;border-radius:4px;display:inline-block;margin-top:1rem;}footer{background:var(--primary);color:white;text-align:center;padding:1rem;margin-top:auto;}
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-check-circle"></i> Sign-Out Complete</h1>
    </header>

    <div class="confirmation-container">
        <h2>Thank you for your service!</h2>
        <a href="index.html" class="back-btn">
            <i class="fas fa-home"></i> Return to Main Page
        </a>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>document.getElementById('currentYear').textContent=new Date().getFullYear();</script>
</body>
</html>