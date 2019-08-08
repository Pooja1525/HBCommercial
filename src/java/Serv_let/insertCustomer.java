package Serv_let;

import Database.Database;
import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class insertCustomer extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Inside Servlet");
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String Email = request.getParameter("email");
            String Address = request.getParameter("address");
            String Contact = request.getParameter("contact");
            String Password = request.getParameter("password");
            String Cpassword = request.getParameter("cpassword");
            String Gender = request.getParameter("gender");
            boolean b = Database.addCustomer(firstName, lastName,  Email, Address, Contact, Password, Gender);
            if (b){
                out.print(" <script type=\"text/javascript\">\n" +
"\n" +
"             \n" +
"        alert (\"User Added\");\n" +
"\n" +
"      </script>");
            }
            else{
                out.print(" <script type=\"text/javascript\">\n" +
"\n" +
"             \n" +
"        alert (\"something went wrong\");\n" +
"\n" +
"      </script>");
            }
                
        }
    }
