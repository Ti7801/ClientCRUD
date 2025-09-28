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
<head>
    <title>Formulário Cliente</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card">
    <h2>Cadastre um Novo Cliente</h2>
	<form method="post" action="<%= action %>">
    <input type="hidden" name="id" value="<%= client.getId() %>"/>
    
    <label for="nome">Nome:</label>
    <input type="text" id="nome" name="nome" value="<%= client.getNome() != null ? client.getNome() : "" %>" placeholder="Digite o nome"/><br/>
    
    <label for="email">Email:</label>
    <input type="text" id="email" name="email"  value="<%= client.getEmail() != null ? client.getEmail() : "" %>" placeholder="Digite o email"/><br/>
    
    <label for="telefone">Telefone:</label>
    <input type="text" id="telefone" name="telefone" value="<%= client.getTelefone() != null ? client.getTelefone() : "" %>" placeholder="Digite o telefone"/><br/>
    
    <input type="submit" value="Salvar" class="btn"/>
    <a href="index.jsp" class="btn">Voltar</a>
</form>

   
</div>
</body>
</html>
