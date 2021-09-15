package DAO;

import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DAODisciplina {
    
    private Connection conx;
    private PreparedStatement pstm;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Disciplina> lista = new ArrayList<>();
    
    public DAODisciplina(){
        conx = new Conexao().getConexao();
        
    }
    
    public void insertDisciplina(Disciplina disciplina){
        String sql = "INSERT INTO tb_disciplina (nome_disciplina, cargahoraria_disciplina) VALUES (?, ?)";
        try{
            
            pstm = conx.prepareStatement(sql);
            pstm.setString(1, disciplina.getNome_dcpn());
            pstm.setInt(2, disciplina.getCargah_dcpn());
            pstm.execute();
            pstm.close();
            
        }catch(Exception erro){
            
            throw new RuntimeException("Erro no metodo inserir Disciplina: "+erro);                   
        }
    }
    
    public ArrayList<Disciplina> showDisciplinas(){
            String sql = "SELECT * FROM tb_disciplina";
        try{
            st = conx.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                Disciplina disciplina = new Disciplina();
                disciplina.setId_dcpn(rs.getInt("id_disciplina"));
                disciplina.setNome_dcpn(rs.getString("nome_disciplina"));
                disciplina.setCargah_dcpn(rs.getInt("cargahoraria_disciplina"));
                lista.add(disciplina);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no metodo consultar disciplinas: "+erro);
            
        }
        return lista;
    }
 
    public ArrayList<Disciplina> showNomeDisciplinas(String value){
            String sql = "SELECT * FROM tb_disciplina WHERE nome_disciplina like '%"+value+"%'";
        try{
            st = conx.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                Disciplina disciplina = new Disciplina();
                disciplina.setId_dcpn(rs.getInt("id_disciplina"));
                disciplina.setNome_dcpn(rs.getString("nome_disciplina"));
                disciplina.setCargah_dcpn(rs.getInt("cargahoraria_disciplina"));
                lista.add(disciplina);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no metodo consultar disciplinas: "+erro);
            
        }
        return lista;
    }
    
    public void updateDisciplina(Disciplina disciplina){
        
        try{
            String sql = "UPDATE tb_disciplina SET nome_disciplina = ?, cargahoraria_disciplina = ? "
                    + "WHERE id_disciplina=?";
            pstm = conx.prepareStatement(sql);
            pstm.setString(1, disciplina.getNome_dcpn());
            pstm.setInt(2, disciplina.getCargah_dcpn());
            pstm.setInt(3, disciplina.getId_dcpn());
            pstm.execute();
            pstm.close();
            
        }catch(Exception erro){
           throw new RuntimeException("Erro no metodo alterar disciplina: "+erro); 
        }
    }
    
    public void deleteDisciplina(int value){
        try{
            String sql = "DELETE FROM tb_disciplina WHERE id_disciplina = "+value;
            st = conx.createStatement();
            st.execute(sql);
            st.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro no metodo ao excluir disciplina "+erro);
                }
    }
       
}
