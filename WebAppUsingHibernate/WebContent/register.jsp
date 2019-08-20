
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.hibernate.StudentDao"%>
     <jsp:useBean id="student" class="com.hibernate.Student"/> 
     <jsp:setProperty property="*" name="student"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Student Register</title>
</head>
<body>

<h1>Student register file</h1>

<% 
int i=StudentDao.register(student);

if(i>0){
	out.print("Student added succefully..");
}else{
	out.print("ERROR....");
}

%>



</body>
</html>