<%
session.invalidate();//deleting all the value from the session
response.sendRedirect("login.jsp");

%>