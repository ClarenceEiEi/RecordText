<%-- 
    Document   : Add
    Created on : Sep 9, 2017, 7:10:10 PM
    Author     : PUNEIEI
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="Codee.*"%>

<html>
<head>
    <title> InDex</title>
     <style>
      h1{ text-align : center;}
      .wrapper {
    text-align: center;
}
       </style>
        <link rel="stylesheet" type="text/css" href="newcss.css" />
</head>
<body>  <%
        //Date date = new Date();
        Add a = new Add();       	
        session.setAttribute( "theDate", a.currentDate );                 
        %>
	<form name="frmAdd" method="post" action="add.jsp">	
            <h1>Add Form</h1>
	<table width="374" border="1">	
        <tr>
	<th width="140">
    <div align="left">Date </div></th>
        <td width="272"><% out.print(a.currentDate); %></td>
	</tr> 
  <tr>
	<th width="140">
    <div align="left">Text </div></th>
		<td ><input type="text" name="txttext" width="400"  required="required"></td>
	
	</table>
        <div class="wrapper">
	<input type="submit" value="Save">
        </div>
	</form> 
</body>
</html>
