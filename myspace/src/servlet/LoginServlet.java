
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import JavaBean.LoginHandlerUser;

/**
 *
 * @author admin
 */
public class LoginServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      
    } 


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	doPost(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       request.setCharacterEncoding("UTF-8");
       response.setContentType("text/html");
       response.setCharacterEncoding("UTF-8");
       String name=request.getParameter("username");
       String pass=request.getParameter("password");
       LoginHandlerUser login=new  LoginHandlerUser();
       int flag=login.checklogin(name, pass);
       if(flag==1){
    	   JOptionPane.showMessageDialog(null, "用户名不存在");
    	   response.sendRedirect("login.jsp");
       }
       else if(flag==2){
    	   JOptionPane.showMessageDialog(null, "欢迎"+request.getParameter("username")+"，登录成功！！！");
    	   response.sendRedirect("zhuye.jsp");
       }
       else if(flag==3){
    	   JOptionPane.showMessageDialog(null, "密码错误");
    	   response.sendRedirect("login.jsp");
       }
       else if(flag==4){
    	   JOptionPane.showMessageDialog(null, "系统错误，请稍后再试");
    	   response.sendRedirect("login.jsp");
       }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
