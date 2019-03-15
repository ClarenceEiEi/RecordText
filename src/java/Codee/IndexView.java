/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Codee;

import java.sql.ResultSet;

/**
 *
 * @author PUNEIEI
 */
public class IndexView {
    public String Username ;
    public String keyword ="";
    public String UserID;
    public String sql;
    public String txkeyword="";
    public String dataview = "";
    public ResultSet rec ;    
    Object strUserID;
    Object User;
   public void setStrUserID (String StrUserID)
    {
     this.strUserID = StrUserID;
    }
    public Object getStrUserID (){return strUserID;}
    public void setUser (String User)
    {
     this.User = User;
    }
    public Object getUser (){return User;}
    public void setUserID (String UID)
    {
     UserID = UID;
    }
     public void setKeyword (String keyword)
    {
     this.keyword = keyword;
    }
     public String getkeyword (){return keyword;}
    public void setTxkeyword (String Txkeyword)
    {
     txkeyword = Txkeyword;
    }
    public String getTxkeyword (){return txkeyword;}
    
    public void setSearch(String Sr) {
        sql = "SELECT * FROM  datanaja WHERE  TEXT like N'%" +  Sr + "%'"+ " AND  IDsyn like  N'%"+ UserID +"%'" ;
        //SELECT TEXT FROM customer GROUP BY TEXT HAVING AVG(Budget) >= '2000000'
        //"SELECT * FROM datanaja WHERE ... ='"+....+"'";
    }
    
    public void setDataview () {dataview = "SELECT * FROM  datanaja WHERE IDsyn = '" + this.UserID + "'"+"ORDER BY Numrun DESC";}
    public String getDataview (){return dataview;}
}
