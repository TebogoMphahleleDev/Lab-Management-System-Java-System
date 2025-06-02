<%-- 
    Document   : signout_error
    Created on : 12 May 2025, 1:04:32 PM
    Author     : kadyk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign-Out Error</title>
    <!-- Use the same styling as invalid_staff_no.jsp -->
</head>
<body>
    <h2>Sign-Out Failed!</h2>
    <p>Error: ${error}</p>
    <a href="signout.jsp">Try Again</a>
</body>
</html>
