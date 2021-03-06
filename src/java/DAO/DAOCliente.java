package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Array;
import java.sql.ResultSet;
import MODEL.Cliente;
import java.util.ArrayList;
import javax.management.RuntimeErrorException;
import MODEL.Cliente;
import java.util.List;
/** * @author Andre Santos */

public class DAOCliente {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> busca = new ArrayList<>();

    public DAOCliente(){
        conn = new Conexao().getConexao();
    }   
    
    public void insereCliente(Cliente cliente){
        String sql = "INSERT INTO Clientes (nome, email) VALUES (?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro de inserção!", erro);
        }
    }
    
    public ArrayList<Cliente> buscaClientes(){
        String sql = "SELECT * FROM Clientes";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cliente cli = new Cliente();
                cli.setId(rs.getInt("id"));
                cli.setNome(rs.getString("nome"));
                cli.setEmail(rs.getString("email"));
                busca.add(cli);
            }
            st.close();
            return busca;            
        }catch(Exception erro){
            throw new RuntimeException("Erro na busca de clientes!", erro);
        }
    }
    
    public void alteraCliente(int id, String nome, String email){
        String sql = "SELECT * FROM Clientes";
        try{
            st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = st.executeQuery(sql);
            while(rs.next()){
               int idDB = rs.getInt("id");
               if(idDB == id){
                   rs.updateString("nome", nome);
                   rs.updateString("email", email);
                   rs.updateRow();
               }
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro na alteração de clientes!", erro);
        }
    }
    
    public void deletaCliente(int id){
        String sql = "SELECT * FROM Clientes";
        try{
            st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = st.executeQuery(sql);
            while(rs.next()){
                int idDB = rs.getInt("id");
                if(idDB == id){
                    rs.deleteRow();
                }
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro ao deletar cliente!",erro);
        }
    }
    
    public void atualizaClienteAula(Cliente cliente){
        try{
            String sql = "UPDATE Clientes SET nome = ?, email = ? WHERE id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setInt(3, cliente.getId());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro na atualização!",erro);
        }
    }
    
    public void excluirClienteAula(int valor){
        try{
            String sql = "DELETE FROM Clientes WHERE id = "+valor;
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro na exclusão do cliente!", erro);
        }
    }
    
    public ArrayList<Cliente> buscaClientesNome(String nome){
        String sql = "SELECT * FROM Clientes WHERE nome LIKE '%"+nome+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cliente cli = new Cliente();
                cli.setId(rs.getInt("id"));
                cli.setNome(rs.getString("nome"));
                cli.setEmail(rs.getString("email"));
                busca.add(cli);
            }
            st.close();
            return busca;            
        }catch(Exception erro){
            throw new RuntimeException("Erro na busca de clientes!", erro);
        }
    }
}