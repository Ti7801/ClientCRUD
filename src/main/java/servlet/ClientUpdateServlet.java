 package servlet;

import dao.ClientDAO;
import Model.Client;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;

@WebServlet("/client-update")
public class ClientUpdateServlet extends HttpServlet {
    private ClientDAO dao = new ClientDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");

        Client c = new Client(id, nome, email, telefone);
        dao.updateCliente(c);
        response.sendRedirect("clients");
    }
}
