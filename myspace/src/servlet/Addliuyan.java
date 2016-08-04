
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import JavaBean.LiuyanbanBean;
import JavaBean.LoginHandlerUser;

/**
 *
 * @author admin
 */
public class Addliuyan extends HttpServlet {
   
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
    	String author=new String(request.getParameter("author").getBytes("ISO-8859-1"),"UTF-8");
    	String title=new String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
    	String content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
    	SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String today=format.format(new Date());
    	LiuyanbanBean mm=new LiuyanbanBean();
    	mm.setAuthor(author);
    	mm.setTitle(title);
    	mm.setContent(content);
    	mm.setTime(today);
    	HttpSession session=request.getSession();
    	ServletContext scx=session.getServletContext();
    	ArrayList wordlist=(ArrayList)scx.getAttribute("wordlist");
    	if(wordlist==null)
    	wordlist=new ArrayList();
    	wordlist.add(mm);
    	scx.setAttribute("wordlist",wordlist);
    	response.sendRedirect("show.jsp");

    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}



