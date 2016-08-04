/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package JavaBean;
import java.sql.*;

public class LoginHandlerUser {
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    public LoginHandlerUser(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/myspace","root","root");}
        catch(Exception e){
            e.printStackTrace();
        }
    }
public int checklogin(String name,String pass){
  int i = 0;
	try{
       String sql="select*from user where user='"+name+"'";
        st=con.createStatement();
        rs=st.executeQuery(sql);
        if(rs.next()){
           if(pass.equals(rs.getString("password"))){
        	   i=2;
           }
           else{
        	   i=3;
           }
        }
        else{
            i=1;
        }
   }
   catch(Exception e){
       e.printStackTrace();
       i=4;
   }
	return i;
}
}
