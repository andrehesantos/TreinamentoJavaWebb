package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import MODEL.Cliente;

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
}