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
            <input type="text" name="nome"/><br><br>
            <label>Email: </label>
            <input type="email" name="email"/><br><br>
            <input type="submit" value="Enviar"/><br><br><br><br>
        </form>
        <form action="buscaClientes.jsp">
            <input type="submit" value="submit"><br><br><br><br>
        </form>
        <form action="atualizaCliente.jsp" method="post">
            <h1>Atualiza Cliente</h1>
            <label>ID: </label>
            <input type="text" name="id"/><br><br>
            <label>Nome: </label>
            <input type="text" name="nomeAtt"/><br><br>
            <label>Email: </label>
            <input type="text" name="emailAtt"/><br><br>
            <input type="submit" value="Envia"/>
        </form>
        
    </body>
</html>
