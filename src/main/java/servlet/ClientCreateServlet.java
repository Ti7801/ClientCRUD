package servlet;

import dao.ClientDAO;
import Model.Client;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/client-create")
public class ClientCreateServlet extends HttpServlet {
    private ClientDAO dao = new ClientDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");

        Client c = new Client();
        c.setNome(nome);
        c.setEmail(email);
        c.setTelefone(telefone);

        dao.addCliente(c);
        response.sendRedirect("clients");
    }
}
