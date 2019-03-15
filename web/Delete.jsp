<%-- 
    Document   : Delete
    Created on : Sep 9, 2017, 7:57:18 PM
    Author     : PUNEIEI
--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="Codee.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
        Connec con = new Connec();
        Del D = new Del();
	try {	                           
                con.ConnecDatabase();
                D.setStrID(request.getParameter("CusID"));
               //D.strID = request.getParameter("CusID");
                D.setID(D.getStrID());               
                D.setSql(D.getID());
           con.s.execute(D.getSql());
         //out.println("Record Delete Successfully");   
            response.sendRedirect("Indexnaja.jsp");        
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
                %>
    </body>
</html>
