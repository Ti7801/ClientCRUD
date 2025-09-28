<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, Model.Client" %>
<html>
<head>
    <title>Lista de Clientes</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card">
    <table>
        <tr><th>ID</th><th>Nome</th><th>Email</th><th>Telefone</th><th>Ações</th></tr>
        <%
            List<Client> lista = (List<Client>) request.getAttribute("clients");
            if (lista != null) {
                for (Client c : lista) {
        %>
        <tr>
            <td><%= c.getId() %></td>
            <td><%= c.getNome() %></td>
            <td><%= c.getEmail() %></td>
            <td><%= c.getTelefone() %></td>
            <td>
                <a href="client-form.jsp?id=<%=c.getId()%>" class="btn">Editar</a>
                <a href="client-delete?id=<%=c.getId()%>" class="btn" style="background-color:#dc3545;">Excluir</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <br>
    <a href="index.jsp" class="btn">Voltar</a>
</div>
</body>
</html>
