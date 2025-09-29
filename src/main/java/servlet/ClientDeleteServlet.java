package servlet;

import dao.ClientDAO;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;

@WebServlet("/client-delete")
public class ClientDeleteServlet extends HttpServlet {
    private ClientDAO dao = new ClientDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        dao.deleteCliente(id);
        response.sendRedirect("clients");
    }
}
