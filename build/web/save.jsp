<%-- 
    Document   : save
    Created on : Sep 10, 2017, 3:18:03 AM
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
            
            Connec con = new Connec();
            Edit ed = new Edit();
            Add a = new Add();
	request.setCharacterEncoding("UTF-8");
	try {		
		con.ConnecDatabase();
                ed.setStrID(request.getParameter("CusID"));
		//ed.strID = request.getParameter("CusID");
                ed.setStrName(request.getParameter("txtName"));
		//ed.strName = request.getParameter("txtName");
                a.setDate(String.valueOf(session.getAttribute("theDate")));
		ed.setUpdate(ed.getStrName(),ed.getStrID(),a.getStrDate());
                con.s.execute(ed.getUpdate());     
         out.println("Record Update Successfully");%>
	  		<a href="Indexnaja.jsp">Home</a>
                        
         
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
	%>
    </body>
</html>
