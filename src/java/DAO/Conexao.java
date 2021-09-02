package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

/** * @author Andre Santos*/

public class Conexao {
    
    public Connection getConexao(){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            return DriverManager.getConnection("jdbc:derby://localhost/bdtreino", "andre", "123");
        }catch(Exception erro){
            throw new RuntimeException("Erro de conexão!", erro);
        }
    
    }
}
