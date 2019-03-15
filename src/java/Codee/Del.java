/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Codee;

/**
 *
 * @author PUNEIEI
 */
public class Del {
    public String ID="";
    public String sql="";
    public String strID="";
    Connec con = new Connec();
    public void setStrID(String strID){this.strID = strID;}
    public String getStrID (){return strID;}
    public void setID(String IDD){this.ID = IDD;}
    public String getID (){return ID;}
    public void setSql(String DD) {      
         this.sql = "DELETE FROM datanaja " +
				" WHERE Numrun = '" + DD +"' ";
        }
    public String getSql (){return sql;}
}
