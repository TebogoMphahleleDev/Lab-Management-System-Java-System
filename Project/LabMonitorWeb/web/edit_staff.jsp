<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Staff</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root{--primary:#2c3e50;--secondary:#3498db;--accent:#e74c3c;--bg:#f5f6fa;}body{font-family:'Segoe UI',Tahoma,Geneva,Verdana,sans-serif;margin:0;background:var(--bg);min-height:100vh;display:flex;flex-direction:column;}.header{background:var(--primary);color:white;padding:1.5rem;box-shadow:0 2px 5px rgba(0,0,0,0.1);}.form-container{max-width:600px;margin:2rem auto;background:white;padding:2rem;border-radius:8px;box-shadow:0 2px 4px rgba(0,0,0,0.05);}input[type="text"],input[type="submit"]{width:100%;padding:0.8rem;margin:0.5rem 0;border:1px solid #ddd;border-radius:4px;}input[type="submit"]{background:var(--secondary);color:white;border:none;cursor:pointer;}input[type="submit"]:hover{background:#2980b9;}footer{background:var(--primary);color:white;text-align:center;padding:1rem;margin-top:auto;}h1{color:var(--primary);}
    </style>
</head>
<body>
    <header class="header">
        <h1><i class="fas fa-user-edit"></i> Edit Staff Member</h1>
        <a href="admin.jsp" style="color:white;text-decoration:none;float:right;"><i class="fas fa-arrow-left"></i> Back</a>
    </header>

    <div class="form-container">
        <form action="EditStaffServlet" method="POST">
            <label>Original Staff No:</label>
            <input type="text" name="originalStaffNo" required>
            
            <h3>New Details:</h3>
            <label>Staff No:</label>
            <input type="text" name="staffno" required>
            
            <label>Surname:</label>
            <input type="text" name="surname" required>
            
            <label>Initials:</label>
            <input type="text" name="initials" required>
            
            <input type="submit" value="Update Staff">
        </form>
    </div>

    <footer>
        <p>Lab System • © <span id="currentYear"></span></p>
    </footer>
    <script>document.getElementById('currentYear').textContent=new Date().getFullYear();</script>
</body>
</html>