package servlet;

import dao.ClientDAO;
import Model.Client;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/clients")
public class ClientListServlet extends HttpServlet {
    private ClientDAO dao = new ClientDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Client> lista = dao.getAllClientes();
        request.setAttribute("clients", lista);

        RequestDispatcher rd = request.getRequestDispatcher("client-list.jsp");
        rd.forward(request, response);
    }
}
