package Servlets;

import Model.Dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logar extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.sendRedirect("login.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{ 
            String login = request.getParameter("user");
            String senha = request.getParameter("senha");

            HttpSession session = request.getSession();

            UsuarioDAO user = new UsuarioDAO();

            if( user.autenticar(login, senha)  ){
                session.setAttribute("user", login);
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("login.jsp");
                session.invalidate();
            }
        }catch (NullPointerException e){
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
