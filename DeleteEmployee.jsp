<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="database.DbConnection" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>

<div class = "container">
<div class = "sidebar">
<h2 style = "text-align : center;">Employee Dashboard</h2>

<ul>
   
   <li>
     <a href = "AddEmp.jsp">
     <i class = "fa-solid fa-circle-user"></i>
     <div class = "title">Add Employee </div>
     </a>
   </li>
  
   <li>
     <a href = "ViewEmployee.jsp">
     <i class="fa-solid fa-user-plus"></i>
     <div class = "title"><b> View Employee</b> </div>
     </a>
   </li>
   
   <li>
     <a href = "UpdateEmployee.jsp">
     <i class="fa-solid fa-circle-user"></i>
     <div class = "title"><b> Update Employee</b> </div>
     </a>
   </li>
   <li>
     <a href = "DeleteEmployee.jsp">
     <i class="fa-solid fa-user-slash"></i>
     <div class = "title"><b> Delete Employee </b></div>
     </a>
   </li>
      
   

</ul>
</div>


<div class = "main">
<h2 style = "padding : 15px;">View Employee Details </h2>

<center>
<%
Connection con = DbConnection.connect();
try{
	PreparedStatement pstmt = con.prepareStatement(" Select * From employee");
	ResultSet rs = pstmt.executeQuery();

%>
<table border ="1">
     <tr>
        <th>Emp_id</th>
        <th>name</th>
        <th>email</th>
        <th>contact</th>
        <th>gender</th>
        <th>designation</th>
        <th>salary</th>
        <th>Status</th>
        <th>Address</th>
         <th>Delete</th>
        
        
        
       
        </tr>
        
        <% while (rs.next())
        {
        	%>
        	<tr>
        	<td><%= rs.getInt(1)%></td>
        	<td><%= rs.getString(2)%></td>
        	<td><%= rs.getString(3)%></td>
        	<td><%= rs.getString(4)%></td>
        	<td><%= rs.getString(5)%></td>
            <td><%= rs.getString(6)%></td>
            <td><%= rs.getString(7)%></td>
            <td><%= rs.getString(8)%></td>
            <td><%= rs.getString(9)%></td>
            <td><a href="Delete.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
        	
        	</tr>
        	<%
        }
} catch(Exception e){
	e.printStackTrace();
	
	
}
        	%>
        	
        
</table>

</div>
</body>
</html>