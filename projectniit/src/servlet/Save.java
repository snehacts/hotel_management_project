package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customerEntities.customer;
import repository.customerDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Save
 */
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Save() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
       // out.println("inside save");
          
        String full_name=request.getParameter("full_name");  
   
        String address=request.getParameter("address");
        String contact_number=request.getParameter("contact_number"); 
        String gender=request.getParameter("gender");
        String date_of_birth=request.getParameter("date_of_birth");
        String user_name=request.getParameter("user_name");  
        String password=request.getParameter("password");  
       String repeat_password=request.getParameter("repeat_password");  
        String email_address=request.getParameter("email_address");  
     
          
 customer e=new customer();  
        
		e.setFull_name(full_name);
		e.setAddress(address); 
		e.setContact_number(contact_number);
        e.setGender(gender); 
        e.setDate_of_birth(date_of_birth); 
        e.setUser_name( user_name); 
        e.setPassword( password); 
        e.setRepeat_password( repeat_password); 
        e.setEmail_address( email_address) ;  
          
        
       
          
        int status = 0;
		try {
			status = customerDAO.save(e);
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}  
        if(status>0){  
           // out.print("<p>Record saved successfully!</p>");  
            request.getRequestDispatcher("RegisterSuccessfully.html").include(request, response);  
        }else{  
            out.println("Sorry! unable to save record");  
        }  
          
        out.close();  

	}

}
