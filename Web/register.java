import java.io.IOException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet{
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("104.130.207.9","jackad", "K1m19s!");

        }
        catch(Exception e){
            System.out.println(e);
        }
        String username = request.getParameter("username");
        String pw1 = request.getParameter("pw1");
        String pw2 = request.getParameter("pw2");
        String email = request.getParameter("email");
        String pType = request.getParameter("type");
        String rank = request.getParameter("rank");
        String division = request.getParameter("division");
        String role = request.getParameter("role");
        String pStyle = request.getParameter("style");

        if(username.isEmpty() || pw1.isEmpty() || pw2.isEmpty() || email.isEmpty() || pType.isEmpty() ||
                rank.isEmpty() || division.isEmpty() || role.isEmpty() || pStyle.isEmpty()){
            RequestDispatcher req = request.getRequestDispatcher("register_1.jsp");
            req.include(request, response);
        }
        else if(!pw1.equals(pw2)){
            RequestDispatcher req = request.getRequestDispatcher("register_1.jsp");
            req.include(request, response);
        }
        else{
            
            RequestDispatcher req = request.getRequestDispatcher("landingPage.jsp");
            req.forward(request, response);
        }
    }
}
