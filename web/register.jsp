<%-- 
    Document   : register
    Created on : Sep 13, 2017, 6:57:36 PM
    Author     : PUNEIEI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Codee.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="newcss.css" />
         <style>
      h1{ text-align : center;}
      .wrapper {
    text-align: center;
}
       </style>
        <title>JSP Page</title>
    </head>
    <body>     
		<% 
                    Connec con = new Connec();
                    Login log = new Login();
                    con.ConnecDatabase();
                    if(request.getParameter("Action") != null)	{
	
                log.setUsername(request.getParameter("txtName"));
                log.setPassword(request.getParameter("txtPass"));
                //log.username = request.getParameter("txtName");
                //log.password = request.getParameter("txtPass");                              
                request.setCharacterEncoding("UTF-8");
	try {				                        
                    log.setSqlReLogin(log.getUsername(),log.getPassword());
                    con.s.execute(log.getSqlReLogin());
                    out.println("Register Successfully");
                
                                %>
                                
                                 <a href="Login.jsp">Login</a>
                <%
                    
                
                
			
                } catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(con.s!=null){
				con.s.close();
				con.connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}

}    
                %>
               
                <br>
                <br>
                <form name="frmUpdate" method="post" action="register.jsp?Action=Login">	
                    <h1>Register Form</h1>
			<table width="428" border="1">	
			<tr>
				<th width="181">
				<div align="left">ID </div></th>
				<td><input type="text" name="txtName" size="20" required="required" ></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">Password </div></th>
				<td><input type="password" name="txtPass" size="20" required="required"></td>
			</tr>
			
			</table> 
                    <div class="wrapper">
		<input type="submit" value="Submit" name="submit">
                    </div>
		</form> 
    </body>
</html>
