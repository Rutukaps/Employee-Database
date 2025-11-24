<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="database.DbConnection" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = DbConnection.connect();
int id = Integer.parseInt(request.getParameter("Emp_id"));


try{
PreparedStatement pstmt = con.prepareStatement("Delete from employee where id=?");
pstmt.setInt(1, id);
int i = pstmt.executeUpdate();
if(i>0);

{
	response.sendRedirect("DeleteHomework.jsp");
}
}catch(Exception e)
{
e.printStackTrace();
}





%>
</body>
</html>