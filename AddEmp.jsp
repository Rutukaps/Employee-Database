<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "database.DbConnection"  %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>body {  
  font-family : Arial,sans-serief;
  background : #cfc8c8;
  align-items : center;
  display : flex;
  justify-content : center;
  height : 100vh;
  }
 .add-container {
  background : #d6d4d4;
  padding : 80px;
  border-radius : 8px;
  box-shadow : 0 0 15px rgba(0,0,0,0.1);
  width : 600px;
  
 }
 
  .add-container h2{
  text-align : center;  
  margin-bottom : 20px;
  color : #333;
  }
  form lable,form lable{
  font-weight : 600;
  align-items : center;
  padding : 10px;
  margin-bottom : 10px;
  
  }
  form input[type="text"] {
    width: 100%;
    padding: 10px 10px;
    margin-bottom: ;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
    box-sizing: border-box;
    transition: border-color 0.3s;
    
}
placeholder { 
text-align : center;
align-items : center;

}
form lable {
text-align :left;
display : block;
}
form input::placeholder{
text-align : center;
}

form input[type="text"]:focus {
    border-color: #007bff;
    outline: none;
    text-align  : center;
    padding: 10px;
    height: 40px;
    font-size: 14px;
}

/* Submit button */
form input[type="submit"] {
    background-color: #007bff;
    color: white;
    display: block;
    margin: 20px auto;
    padding: 10px 25px;
    font-size: 18px;
}
form input[type="submit"]:hover {
    background-color: #0056b3;
}


</style>
<body>

<div class = "add-container">

<h1>Add Employee Details</h1>

<form action="AddEmployee" method = "post">
<label>Name</label>
<input type ="text" placeholder = "Enter Name" name= "name" Required/>
<br></br>
<label>Email</label>
<input type = "text" placeholder = "Enter Email" name ="email" Required/>
<br></br>
<label>Contact No</label>
<input type = "text" placeholder = "Enter Contact No." name = "contact" Required/>
<br></br>
<label>Gender</label>
<input type = "text" placeholder = "Enter Gender" name = "gender" Required/>
<br></br>
<label>Designation</label>
<input type = "text" placeholder = "Enter Designation" name = "designation" Required/>
<br></br>
<label>Salary</label>
<input type = "text" placeholder = "Enter Salary" name = "salary" Required/>
<br></br>
<label>Status</label>
<input type = "text" placeholder = "Enter Status" name = "status" Required/>
<br></br>
<label>Address</label>
<input type = "text" placeholder = "Enter Address" name = "address" Required/>
<br></br>
<input type = "submit" value = "submit" /><br>
<br>




 





</form>
</div>






</body>
</html>