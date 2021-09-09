<%-- 
    Document   : atualizaCliente
    Created on : 05/09/2021, 21:22:30
    Author     : Andre Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <%
        DAOCliente cld = new DAOCliente();
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nomeAtt");
        String email = request.getParameter("emailAtt");
        cld.alteraCliente(id, nome,email);        
        response.sendRedirect("index.jsp");
    %>
    <body>

    </body>
</html>
