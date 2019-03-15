<%-- 
    Document   : Indexnaja
    Created on : Sep 10, 2017, 4:05:12 AM
    Author     : PUNEIEI
--%>

<%@page import="Codee.IndexView"%>
<%@page import="Codee.Connec"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%@page import = "Codee.*" %>

<!DOCTYPE html>
<html>
    <head>
       
        <link rel="stylesheet" type="text/css" href="newcss.css" />
        <title>Index</title>
    </head>
    <body>
        <%
             Connec con = new Connec();
            con.ConnecDatabase();
            
        request.setCharacterEncoding("UTF-8");
        //Object strUserID = session.getAttribute("sUserID");
        
        //Object User = session.getAttribute("UN");
        IndexView IDV = new IndexView();    
        IDV.setStrUserID(session.getAttribute("sUserID").toString());
        IDV.setUser(session.getAttribute("UN").toString());
        IDV.setUserID(IDV.getStrUserID().toString());
        IDV.Username = IDV.getUser().toString();
        %>
        <form action="index.jsp"> 
                  <% out.println("User : "+IDV.Username);%> 
                  <br>
                    
                   <tr>
                   <th>
                   <input wide="99" type="submit" value="AddData" name ="sub" action="index.jsp" >
                   </th>
                   </tr>  
                   
              </form>
                  <form action="logout.jsp">                  
                  
                    
                   <tr>
                   <th>
                   <input wide="99" type="submit" value="Logout" >
                   </th>
                   </tr>  
                   
              </form>
       <% 
           IDV.setTxkeyword(request.getParameter("txtKeyword"));
           //IDV.txkeyword = request.getParameter("txtKeyword");
       
	if(IDV.getTxkeyword() != null) {
		//IDV.keyword = request.getParameter("txtKeyword");
                         IDV.setKeyword(request.getParameter("txtKeyword"));
	}      	
      
%>

	<form name="frmSearch" method="get" action="Indexnaja.jsp?Action=key">
	  <table width="599" border="1">
	    <tr>
	      <th>Keyword
	      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=IDV.keyword%>">
	      <input type="submit" value="Search" name ="sub">
          
              </th>             
	    </tr>            
	  </table>
	</form>
              
        <%            
                                            
           IDV.setSearch(IDV.getkeyword());
                           
           //IDV.sql = "SELECT * FROM  datanaja WHERE  TEXT like '%" +  IDV.keyword + "%'";
           //out.print(word);
		//con.s = con.connect.createStatement();           
                IDV.setDataview();
                if(IDV.getkeyword()!=""){
               IDV.rec = con.s.executeQuery(IDV.sql);     }    
                else{
		IDV.rec = con.s.executeQuery(IDV.getDataview());  }            
                
                //session.setAttribute("Numnum",rec.getString("Numrun"));  
                
        %>
        <table width="600">
  <thead>
    <tr>
      <th align="center">ID</th>
      <th align="center">Date</th>
      <th align="center">Text</th>
      <th align="center">Delete</th>
      <th align="center">Edit</th>
    </tr>
  </thead>
  <tbody>                
                                  
                                 
                                 
	    <%while((IDV.rec!=null) && (IDV.rec.next())) { %>   
    <tr>
        
      <td><div align="center"><%out.print(IDV.Username.toUpperCase());%></div></td>
                                      <td  width="190" > <div align="center"><%=IDV.rec.getString("DATE")%></div></td>
				    <td><%=IDV.rec.getString("TEXT")%></td>
                                     <td align="center"> <a href="Delete.jsp?CusID=<%=IDV.rec.getString("Numrun")%>">Del</a></td>
                                      <td align="center"> <a href="update.jsp?CusID=<%=IDV.rec.getString("Numrun")%>">Edit</a></td>
                                      	<%}%>
    </tr>
      </tbody>
</table>
    
    </body>
</html>
