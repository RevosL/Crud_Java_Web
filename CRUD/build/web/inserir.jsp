<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<!DOCTYPE html>
<html>
    <body>
        <% 
            
            
            
          try{
            String nomedcpn = request.getParameter("nome_disciplina"); 
            String cargahdcpn = request.getParameter("cargahoraria_disciplina");
            String nomeprof = request.getParameter("nome_professor");
            String emailprof = request.getParameter("email_professor");             
            String senhaprof = request.getParameter("senha_professor");
            if(nomedcpn != null || cargahdcpn != null){  
                
                    Disciplina dcp = new Disciplina();
                    DAODisciplina dcd = new DAODisciplina();
                    String nome_disciplina = request.getParameter("nome_disciplina"); 
                    String cargahoraria_disciplina = request.getParameter("cargahoraria_disciplina");
     
                    dcp.setNome_dcpn(nome_disciplina);
                    dcp.setCargah_dcpn(Integer.parseInt(cargahoraria_disciplina));
                    dcd.insertDisciplina(dcp);
                out.print("Disciplina adicionada!");
                out.print("<meta http-equiv='refresh' content='2, url=index.jsp'>");
                
            }else if(nomeprof != null || emailprof != null || senhaprof != null){
                
                    Professor pfs = new Professor();
                    DAOProfessor pfsd = new DAOProfessor();
                    String nome_professor = request.getParameter("nome_professor");
                    String email_professor = request.getParameter("email_professor");             
                    String senha_professor = request.getParameter("senha_professor");
                    

                    pfs.setNome_prof(nome_professor);
                    pfs.setEmail_prof(email_professor);
                    pfs.setSenha_prof(senha_professor);
                    pfsd.insertProfessor(pfs);
                out.print("Professor adicionado!");
                out.print("<meta http-equiv='refresh' content='2, url=index.jsp'>"); 
                    
            }else{
                out.print("Não foram passados valores!");
                out.print("<meta http-equiv='refresh' content='2, url=index.jsp'>");   
            }



              
          }catch(Exception erro){
              throw new RuntimeException("Erro inserir disciplina: ",erro);
          }
          
        %>   
   
    </body>
</html>
