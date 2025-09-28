<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.ClientDAO, Model.Client" %>
<%
    ClientDAO dao = new ClientDAO();
    Client client = new Client();
    String action = "client-create";

    String idStr = request.getParameter("id");
    if (idStr != null) {
        int id = Integer.parseInt(idStr);
        for (Client c : dao.getAllClientes()) {
            if (c.getId() == id) {
                client = c;
                action = "client-update";
                break;
            }
        }
    }
%>
<html>
<head><title>Formulário Cliente</title></head>
<body>
<h2>Cliente</h2>
<form method="post" action="<%= action %>">
    <input type="hidden" name="id" value="<%= client.getId() %>"/>
    Nome: <input type="text" name="nome" value="<%= client.getNome() %>"/><br/>
    Email: <input type="text" name="email" value="<%= client.getEmail() %>"/><br/>
    Telefone: <input type="text" name="telefone" value="<%= client.getTelefone() %>"/><br/>
    <input type="submit" value="Salvar"/>
</form>
<a href="clients">Voltar</a>
</body>
</html>
