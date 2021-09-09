<%-- 
    Document   : executaAlterarClienteAula
    Created on : 09/09/2021, 14:29:09
    Author     : Andre Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Cliente cli = new Cliente();
        DAOCliente cld = new DAOCliente();
        cli.setId(Integer.parseInt(request.getParameter("id")));
        cli.setNome(request.getParameter("nome"));
        cli.setEmail(request.getParameter("email"));
        cld.atualizaClienteAula(cli);
        response.sendRedirect("buscaClientes.jsp");
        %>
    </body>
</html>
