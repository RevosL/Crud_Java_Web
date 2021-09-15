package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    
    public Connection getConexao(){
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            return DriverManager.getConnection("jdbc:derby://localhost/BDAvaliacao","avaliacao","12345");
        }catch(ClassNotFoundException | SQLException erro){
            throw new RuntimeException("Ocorreu um erro na conexão: ",erro);
        }
        
    }
    
    
}

