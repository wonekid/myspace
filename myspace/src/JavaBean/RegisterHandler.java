/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package JavaBean;
import java.sql.*;

/**
 *
 * @author admin
 */
public class RegisterHandler {
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    public RegisterHandler(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","admin");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
public int adduser(String name,String pass){
	int i = 0;
	try{
       String sql="insert into user (user,password) values('"+name+"','"+pass+"')";
        st=con.createStatement();
        i=st.executeUpdate(sql);
   }
   catch(Exception e){
       e.printStackTrace();
   }
	return i;
}
}
