<%-- 
    Document   : deletaCliente
    Created on : 09/09/2021, 09:45:26
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
            DAOCliente cld = new DAOCliente();
            int id = Integer.parseInt(request.getParameter("idDel"));
            cld.deletaCliente(id);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
