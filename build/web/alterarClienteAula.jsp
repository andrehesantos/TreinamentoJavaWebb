<%-- 
    Document   : alterarClienteAula
    Created on : 09/09/2021, 14:12:10
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
        <form action="executaAlterarClienteAula.jsp" method="post">
            <h1>Alteração de Clientes</h1>
            <label>ID: </label>
            <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly/><br><br>
            <label>Nome: </label>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br><br>
            <label>Email: </label>
            <input type="email" name="email" value="<%=request.getParameter("email")%>"/><br><br>
            <input type="submit" value="Alterar"/>
            <input type="button" onclick="window.location.href='buscaClientes.jsp'" value="Cancelar"/>
        </form>
    </body>
</html>
