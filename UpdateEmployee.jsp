<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="database.DbConnection" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<title>Update Employee</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="main">
<h2 style="text-align:center;">Update Employee Details</h2>

<%
String sid = request.getParameter("id");
ResultSet rs = null;

try {
    if (sid == null || sid.trim().equals("")) {
%>
<script>
alert("⚠ Please select an employee to update from View Employee page.");
window.location = "ViewEmployee.jsp";
</script>
<%
        return;
    }

    int id = Integer.parseInt(sid);

    Connection con = DbConnection.connect();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM employee WHERE Emp_id = ?");
    ps.setInt(1, id);
    rs = ps.executeQuery();

    if (!rs.next()) {
%>
<script>
alert("⚠ Employee Not Found!");
window.location = "ViewEmployee.jsp";
</script>
<%
        return;
    }
%>

<center>
<form action="Update.jsp" method="post">
<input type="hidden" name="id" value="<%= rs.getInt("Emp_id") %>">

<label>Name:</label>
<input type="text" name="name" value="<%= rs.getString("name") %>" required><br><br>

<label>Email:</label>
<input type="email" name="email" value="<%= rs.getString("email") %>" required><br><br>

<label>Contact:</label>
<input type="text" name="contact" value="<%= rs.getString("contact") %>" required><br><br>

<label>Gender:</label>
<input type="text" name="gender" value="<%= rs.getString("gender") %>" required><br><br>

<label>Designation:</label>
<input type="text" name="designation" value="<%= rs.getString("designation") %>" required><br><br>

<label>Salary:</label>
<input type="text" name="salary" value="<%= rs.getString("salary") %>" required><br><br>

<label>Status:</label>
<input type="text" name="Status" value="<%= rs.getString("Status") %>" required><br><br>

<label>Address:</label>
<input type="text" name="Address" value="<%= rs.getString("Address") %>" required><br><br>

<button type="submit">Update</button>
</form>

<%
} catch (Exception e) {
    e.printStackTrace();
%>
<script>
alert("❌ Something went wrong while loading data.");
window.location = "ViewEmployee.jsp";
</script>
<%
}
%>

</div>
</body>
</html>
