<%-- 
    Document   : update
    Created on : Sep 10, 2017, 3:44:58 AM
    Author     : PUNEIEI
--%>

<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="Codee.*" %>

<html>
    <head>
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
        <h1>Update Form </h1> 
      <%	
          request.setCharacterEncoding("UTF-8");
        Connec con = new Connec();
        Add a = new Add();
	Edit ed = new Edit();	
        try{
                con.ConnecDatabase();
                ed.setStrID(request.getParameter("CusID"));
		//ed.strID = request.getParameter("CusID");
		session.setAttribute( "theDate", a.currentDate );
                ed.setSql(ed.getStrID());
               // ed.getSql();	
               ed.rec = con.s.executeQuery(ed.getSql());                	               
                if(ed.rec != null) {
                    ed.rec.next();
                    }
		%>
	 
                <form  name="frmUpdate" method="post" action="save.jsp?CusID=<%=ed.rec.getString("Numrun")%>">	
            
            
			<table width="428" border="1">	
			<tr>
				<th width="181">
				<div align="left">ID </div></th>
				<td width="231"><%=ed.rec.getString("IDsyn")%></td>
			</tr>
			<tr>
				<th width="181">
				<div align="left">Text </div></th>
				<td><input type="text" name="txtName" size="20" value="<%=ed.rec.getString("TEXT")%>" required="required"></td>
			</tr>
			
			</table> 
                        <div class="wrapper">
		<input   width ="50" type="submit" value="Save">
                        </div>
		</form> 
		
		<% 	
            } catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
                try {
                if(con.s!=null){
				con.s.close();
				con.connect.close();
                }       
                }
                catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			e.printStackTrace();
}
	%>
    </body>
</html>
