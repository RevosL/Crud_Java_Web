package DAO;

import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOProfessor {
    
    private Connection conx;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Professor> lista = new ArrayList<>();
    
    public DAOProfessor(){
        conx = new Conexao().getConexao();
        
    }
    
    public void insertProfessor(Professor professor){
        String sql = "INSERT INTO tb_professor (nome_professor, email_professor, senha_professor) VALUES (?,?,?)";
        try{
            pstm = conx.prepareStatement(sql);
            pstm.setString(1, professor.getNome_prof());
            pstm.setString(2, professor.getEmail_prof());
            pstm.setString(3, professor.getSenha_prof());
            pstm.execute();
            pstm.close();                
        }catch(Exception erro){
            throw new RuntimeException("Erro ao inserir Professor; "+erro);
            
        }
    }
    
    public ArrayList<Professor> showProfessores(){
        try{
            String sql = "SELECT * FROM tb_professor";
            st = conx.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                Professor professor = new Professor();
                professor.setId_prof(rs.getInt("id_professor"));
                professor.setNome_prof(rs.getString("nome_professor"));
                professor.setEmail_prof(rs.getString("email_professor"));
                professor.setSenha_prof(rs.getString("senha_professor"));
                lista.add(professor);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro ao consultar Professores: "+erro);
        }
        return lista;
    }
    
        public ArrayList<Professor> showNomeProfessor(String value){
            String sql = "SELECT * FROM tb_professor WHERE nome_professor like '%"+value+"%'";
        try{
            st = conx.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                Professor professor = new Professor();
                professor.setId_prof(rs.getInt("id_professor"));
                professor.setNome_prof(rs.getString("nome_professor"));
                professor.setEmail_prof(rs.getString("email_professor"));
                professor.setSenha_prof(rs.getString("senha_professor"));
                lista.add(professor);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no metodo consultar professor: "+erro);
            
        }
        return lista;
    }
    
    public void updateProfessor(Professor professor){
        try{
            String sql = "UPDATE tb_professor SET nome_professor = ?, email_professor = ?, senha_professor = ? "
                    + "WHERE id_professor=?";
            pstm = conx.prepareStatement(sql);
            pstm.setString(1, professor.getNome_prof());
            pstm.setString(2, professor.getEmail_prof());
            pstm.setString(3, professor.getSenha_prof());
            pstm.setInt(4, professor.getId_prof());
            pstm.execute();
            pstm.close();
            
            
        }catch(Exception erro){
            throw new RuntimeException("Erro ao alterar professor: "+erro);
        }
    }
    
    public void deleteProfessor(int value){
        try{
            String sql = "DELETE FROM tb_professor WHERE id_professor = "+value;
            st = conx.createStatement();
            st.execute(sql);
            st.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro ao deletar Professor: "+erro);
        }
    }
    
}
