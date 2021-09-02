<%-- 
    Document   : index
    Created on : 02/09/2021, 16:13:36
    Author     : Andre Santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem-vindo</title>
    </head>
    <body>
        <form action="insereCliente.jsp" method="post">
            <h1>Cadastro de Clientes</h1>
            <label>Nome: </label>
            <input type="text" name="nome" required/><br><br>
            <label>Email: </label>
            <input type="email" name="email" required/><br><br>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
