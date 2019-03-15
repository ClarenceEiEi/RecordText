/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Codee;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author PUNEIEI
 */
public class Add {
    public String strID =""; 
    public String strText ="";
    public String strDate= "";
    public String Sql = ""; 
    public String CusID ;
    Object strUserID;
    public Calendar c = Calendar.getInstance();
    final SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss a");
    public String currentDate = df.format(c.getTime());	;
    
    
    public void setStrUserID(String StrUserID){this.strUserID=StrUserID;}
    public void setStrText(String strText){this.strText=strText;}
    public void setDate(String strDate){this.strDate=strDate;}
    public void setID(String strID){this.strID=strID;}
    
    public String getStrText(){return strText;}
    public String getStrDate(){return strDate;}
    public String getStrID(){return strID;}
    public Object getStrUserID(){return strUserID;}
    
    
    public void setSql(String strText ,String strDate, String strID)
    {
    this.Sql = "INSERT INTO datanaja " + "(TEXT,DATE,IDsyn) " + "VALUES" +"('"+ strText + "','" + strDate +"','" +strID + "')";
    }
    
    
    public String getSql(){return Sql;}
    
            
}
