/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Codee;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author PUNEIEI
 */
public class Connec {  
     public Connection connect = null;
     public Statement s = null;
     final String UserSql = "root";
     final String PassSql = "";
     final String NameDATA = "mydatabase";
        public void ConnecDatabase (){
               
                   try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connect =  DriverManager.getConnection("jdbc:mysql://localhost/"+NameDATA+
					"?user="+UserSql+"&password="+PassSql);
                        this.s = this.connect.createStatement();
                        
                                        } catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
        }
             
        }	
    
    

                 
		
	
	


