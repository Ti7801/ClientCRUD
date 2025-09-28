<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, Model.Client" %>
<html>
<head>
    <title>Lista de Clientes</title>
</head>
<body>
<br>
<h2>Clients</h2>
<br>
<table border="1">
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
			<a href="client-form.jsp?id=<%=c.getId()%>">Editar</a>
			<a href="client-delete?id=<%=c.getId()%>">Excluir</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>

<a href="index.jsp">Voltar</a>
</body>
</html>
