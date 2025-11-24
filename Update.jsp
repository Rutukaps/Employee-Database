<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="database.DbConnection" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head><title>Update Employee</title></head>
<body>

<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String gender = request.getParameter("gender");
String designation = request.getParameter("designation");
String salary = request.getParameter("salary");
String Status = request.getParameter("Status");
String Address = request.getParameter("Address");

try {
    Connection con = DbConnection.connect();
    PreparedStatement ps = con.prepareStatement(
        "UPDATE employee SET name=?, email=?, contact=?, gender=?, designation=?, salary=?, Status=?, Address=? WHERE Emp_id=?"
    );

    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, contact);
    ps.setString(4, gender);
    ps.setString(5, designation);
    ps.setString(6, salary);
    ps.setString(7, Status);
    ps.setString(8, Address);
    ps.setInt(9, id);

    int i = ps.executeUpdate();

    if(i > 0) {
%>
<script>
alert("✔ Employee Updated Successfully!");
window.location = "ViewEmployee.jsp";
</script>
<%
    } else {
%>
<script>
alert("❌ Update failed! Try again.");
window.location = "ViewEmployee.jsp";
</script>
<%
    }

} catch(Exception e) {
    e.printStackTrace();
%>
<script>
alert("❌ Something went wrong during update!");
window.location = "ViewEmployee.jsp";
</script>
<%
}
%>

</body>
</html>
