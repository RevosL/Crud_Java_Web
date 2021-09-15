<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="DAO.DAODisciplina"%>

<%
    try{
        
       String nome_professor = request.getParameter("id_professor");
       String nome_disciplina = request.getParameter("id_disciplina");
    
    if(nome_disciplina != null){   
        DAODisciplina dcp = new DAODisciplina();
        dcp.deleteDisciplina(Integer.parseInt(request.getParameter("id_disciplina")));
        out.print("Disciplina Excluida!");
        out.print("<meta http-equiv='refresh' content='2, url=consultar_disciplina.jsp'>");
    }else if(nome_professor != null){    
        DAOProfessor pfs = new DAOProfessor();
        pfs.deleteProfessor(Integer.parseInt(request.getParameter("id_professor")));
        out.print("Professor Excluido!");
        out.print("<meta http-equiv='refresh' content='2, url=consultar_professor.jsp'>");
    }else{
        out.print("Não foram passados valores!");
        out.print("<meta http-equiv='refresh' content='2, url=consultar_disciplina.jsp'>");
         }
    }catch(Exception erro){
        throw new RuntimeException("Erro Excluir: "+erro);
    }
%>