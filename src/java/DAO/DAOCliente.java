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
    
    public List<Cliente> buscaClientes(){
        String sql = "SELECT * FROM Clientes";
        List<Cliente> busca = new ArrayList<Cliente>();
        try{
            stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Cliente cli = new Cliente();
                cli.setId(rs.getInt("id"));
                cli.setNome(rs.getString("nome"));
                cli.setEmail(rs.getString("email"));
                busca.add(cli);
            }
            stmt.close();
            return busca;            
        }catch(Exception erro){
            throw new RuntimeException("Erro na busca de clientes!", erro);
        }
    }
    
    public void alteraCliente(int id, String nome, String email){
        String sql = "SELECT * FROM Clientes";
        try{
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("SELECT * FROM Clientes");
            while(rs.next()){
               int idDB = rs.getInt("id");
               if(idDB == id){
                   String nomeBD = rs.getString("nome");
                   rs.updateString("nome", nome);
                   rs.updateString("email", email);
                   rs.updateRow();
               }
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro na alteração de clientes!", erro);
        }
    }
}