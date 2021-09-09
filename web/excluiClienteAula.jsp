<%-- 
    Document   : executarExcluiClienteAula
    Created on : 09/09/2021, 17:20:06
    Author     : Andre Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executarExcluiClienteAula.jsp" method="post">
            <h1>Deletar Clientes</h1>
            <h2>Tem certeza que deseja excluir este cliente?</h2>
            <label>ID: </label>
            <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly/><br><br>
            <label>Nome: </label>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br><br>
            <label>Email: </label>
            <input type="email" name="email" value="<%=request.getParameter("email")%>"/><br><br>
            <input type="submit" value="Excluir Cliente"/>
            <input type="button" onclick="window.location.href='buscaClientes.jsp'" value="Cancelar"/>
        </form>
    </body>
</html>
