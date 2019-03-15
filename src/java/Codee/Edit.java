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
public class Edit {
    public String sql ="";    
    public String strID ="";
    public String strName = "";
    public String update = "";
    public ResultSet rec ;
    Connec con = new Connec();
     Add a = new Add();
     
    public void setStrID(String strID){this.strID=strID;}
    public void setStrName(String StrName){this.strName=StrName;}
     
    public String getStrID () { return strID;} 
    public String getStrName () { return strName;} 
    
    public void setSql(String strID){this.sql ="SELECT * FROM  datanaja WHERE Numrun = '" + strID + "'";}
    
    public String getSql () { return sql;} 
    
    public void setUpdate(String strName,String strID,String strDate){update ="UPDATE datanaja " +
				"SET TEXT = '"+ strName + "' " +
				", DATE = '"+ strDate + "' " +												
				" WHERE Numrun = '" + strID + "' "; }
    public String getUpdate(){ return update;}
}
