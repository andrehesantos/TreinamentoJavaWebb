<%-- 
    Document   : buscaClientes
    Created on : 05/09/2021, 14:17:19
    Author     : Andre Santos
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <%
        List<Cliente> result = new ArrayList<Cliente>();  
        DAOCliente cld = new DAOCliente();
        Cliente cli = new Cliente();
        result = cld.buscaClientes();
    %>
    <body>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
            </tr>            
            <%
                for(int i = 0; i < result.size(); i++){
                   cli = result.get(i);
            %>            
            <tr>
                <th><%=cli.getId()%></th>
                <th><%=cli.getNome()%></th>
                <th><%=cli.getEmail()%></th>
            </tr>
        <%
                } 
        %>
        </table>
    </body>
</html>
