<%-- 
    Document   : index
    Created on : Sep 9, 2017, 5:55:18 PM
    Author     : PUNEIEI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="Codee.*"%>
<html>
<head>
	<title>ADD Data</title>
        
</head>
<body>
	
	<%
            Add a = new Add();
            Connec con = new Connec();
         //Object strUserID = session.getAttribute("sUserID");
         a.setStrUserID(session.getAttribute("sUserID").toString());
         //a.strID =strUserID.toString();  
         a.setID(a.getStrUserID().toString());
	if(request.getParameter("txtID") != null) {
		a.CusID = request.getParameter("ID");
	}
        con.ConnecDatabase();
	
	try {
		          
                a.setStrText(request.getParameter("txttext"));
		//a.strText = request.getParameter("txttext");
                a.setDate(String.valueOf(session.getAttribute("theDate")));
                //a.strDate= String.valueOf(session.getAttribute("theDate"));              
                a.setSql( a.getStrText(),a.getStrDate(), a.getStrID());
               
               
                con.s.execute(a.getSql());
               
                if(a.Sql != null){
                out.println("Record Inserted Successfully");
                }	
                else{out.println("Record Inserted Fail");}
%>
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