/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Codee;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author PUNEIEI
 */
public class Login {
    public String txUser ="";
    public String username ="";
    public String password ="";
    public String txPass ="";  
    public String Action="";
    public ResultSet rec;
    public String login ="";   
    public boolean log = false;
    public String AddIDnew ="";
    
     public void setUsername(String Username){this.username=Username;}
     public void setPassword(String Password){this.password=Password;}
     public String getUsername(){return username;}   
     public String getPassword(){return password;}
    
    public void setTxUser(String User){
        this.txUser=User;
        
    }
    public void setTxPass(String pass){
        
        this.txPass=pass;
    }
    
    public String getTxUser(){return txUser;}
    public String getTxPass(){return txPass;}
    
    
    public void setAction(String Action){
        
        this.Action=Action;
    }
    public String getAction(){return Action;}
    
   
    
    public void setlogin (String u,String p){         
                                  
        this.login = "SELECT * FROM  dataID WHERE " +
			" Username = '" + u + "' AND " + 
			" Password = '" + p + "' ";               
    }   
    public String PTlog(boolean a){
        String str = "";
        if(a=true){
        str = "Username and Password Incorrect!";     
        }
        return str;
    }
    public void setSqlReLogin (String name,String pass){ AddIDnew = "INSERT INTO dataID " + "(Username,Password) " + "VALUES" +"('"+ name + "','" + pass +"')";}
    
    public String getSqlReLogin(){return AddIDnew;}
              
}
