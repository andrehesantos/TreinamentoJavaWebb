<%-- 
    Document   : buscaClientes
    Created on : 05/09/2021, 14:17:19
    Author     : Andre Santos
--%>


<%@page import="sun.util.cldr.CLDRLocaleDataMetaInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <%
        
        DAOCliente cld = new DAOCliente();
        ArrayList<Cliente> result = new ArrayList<>();
        Cliente cli = new Cliente();
        //result = cld.buscaClientes();
    %>
    <body>
        <form action="buscaClientes.jsp" method="post">
            <input type="text" name="nome" />
            <input type="submit" value="Pesquisar"/>
        </form>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Alterar Usuário</th>
                <th>Deletar Usuário</th>
            </tr>            
            <%
                if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
                    result = cld.buscaClientes();
                    for(int i = 0; i < result.size(); i++){
                        cli = result.get(i);
            %>            
            <tr>
                <td><%=cli.getId()%></td>
                <td><%=cli.getNome()%></td>
                <td><%=cli.getEmail()%></td>
                <td><a href='alterarClienteAula.jsp?id=<%=cli.getId()%>&nome=<%=cli.getNome()%>&email=<%=cli.getEmail()%>'>CLIQUE AQUI</a></td>
                <td><a href='excluiClienteAula.jsp?id=<%=cli.getId()%>&nome=<%=cli.getNome()%>&email=<%=cli.getEmail()%>'>CLIQUE AQUI</a></td>
            </tr>
        <%
                    } 
                }else{
                    result = cld.buscaClientesNome(request.getParameter("nome"));
                    for(int i = 0; i < result.size(); i++){
                        cli = result.get(i);                     
        %>
            <tr>
                <td><%=cli.getId()%></td>
                <td><%=cli.getNome()%></td>
                <td><%=cli.getEmail()%></td>
                <td><a href='alterarClienteAula.jsp?id=<%=cli.getId()%>&nome=<%=cli.getNome()%>&email=<%=cli.getEmail()%>'>CLIQUE AQUI</a></td>
                <td><a href='excluiClienteAula.jsp?id=<%=cli.getId()%>&nome=<%=cli.getNome()%>&email=<%=cli.getEmail()%>'>CLIQUE AQUI</a></td>
            </tr>
        <%
                    }
                }
        %>    
        </table>
        <a href="index.jsp">Voltar para a tela principal.</a>
    </body>
</html>
