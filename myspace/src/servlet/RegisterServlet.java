
package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import JavaBean.RegisterHandler;

/**
 *
 * @author admin
 */
public class RegisterServlet extends HttpServlet {
   
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
       String name=request.getParameter("username1");
       String pass=request.getParameter("password1");
       RegisterHandler login=new  RegisterHandler();
       int flag=login.adduser(name, pass);
       if(flag==0){
    	   JOptionPane.showMessageDialog(null, "注册失败,用户名已存在！");
    	   response.sendRedirect("register.jsp");
       }
       else if(flag==1){
    	   JOptionPane.showMessageDialog(null, "注册失败");
    	   response.sendRedirect("login.jsp");
       }
       else {
    	   JOptionPane.showMessageDialog(null, "系统错误，请稍后再试");
    	   response.sendRedirect("register.jsp");
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
