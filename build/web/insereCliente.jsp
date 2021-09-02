<%-- 
    Document   : insereCliente
    Created on : 02/09/2021, 16:15:53
    Author     : Andre Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            try{
                Cliente cli = new Cliente();
                DAOCliente cld = new DAOCliente();
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                if(nome.equals(null) || email.equals(null)){
                    response.sendRedirect("index.jsp");
                }
                else{
                    cli.setNome(nome);
                    cli.setEmail(email);
                    cld.insereCliente(cli);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro ao executar o inserir!", erro);
            }
        %>
    </body>
</html>
