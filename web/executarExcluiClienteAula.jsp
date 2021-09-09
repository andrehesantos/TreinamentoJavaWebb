<%-- 
    Document   : executarExcluiClienteAula
    Created on : 09/09/2021, 17:28:49
    Author     : Andre Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <body>
        <%
           DAOCliente cld = new DAOCliente();
           int id = Integer.parseInt(request.getParameter("id"));
           cld.excluirClienteAula(id);
           response.sendRedirect("buscaClientes.jsp");
        %>
    </body>
</html>
