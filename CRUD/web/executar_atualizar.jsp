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
            
           if(nomedcpn != null && cargahdcpn != null){  
                
                    Disciplina dcp = new Disciplina();
                    DAODisciplina dcd = new DAODisciplina();
                         
                    dcp.setNome_dcpn(request.getParameter("nome_disciplina"));
                    dcp.setCargah_dcpn(Integer.parseInt(request.getParameter("cargahoraria_disciplina")));
                    dcp.setId_dcpn(Integer.parseInt(request.getParameter("id_disciplina")));
                    dcd.updateDisciplina(dcp);
                out.print("Disciplina Atualizada!");
                out.print("<meta http-equiv='refresh' content='2, url=consultar_disciplina.jsp'>");
                
            }else if(nomeprof != null && emailprof != null && senhaprof != null){
                
                    Professor pfs = new Professor();
                    DAOProfessor pfsd = new DAOProfessor();
                    
                    pfs.setNome_prof(request.getParameter("nome_professor"));
                    pfs.setEmail_prof(request.getParameter("email_professor"));
                    pfs.setSenha_prof(request.getParameter("senha_professor"));
                    pfs.setId_prof(Integer.parseInt(request.getParameter("id_professor")));
                    pfsd.updateProfessor(pfs);
                out.print("Professor Atualizado!");
                out.print("<meta http-equiv='refresh' content='2, url=consultar_professor.jsp'>"); 
                    
            }else{
                out.print("Não foram passados valores!");
                out.print("<meta http-equiv='refresh' content='2, url=consultar_professor.jsp'>");   
            }
   
          }catch(Exception erro){
              throw new RuntimeException("Erro executar atualizar: ",erro);
          }  
        %>   
   
    </body>
</html>
