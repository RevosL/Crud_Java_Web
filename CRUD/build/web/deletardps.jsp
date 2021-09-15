<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Consultar Professor</title>
    </head>
    <body>
        <form class="enviar" action="index.jsp">
            <input type="submit" value="INICIO">
        <h1>Professores!</h1>
        </form>
        <form action="consultar_professor.jsp" method="post">
            <input placeholder="Pesquisar Por Nome" type="text" size="30" name="busca" id="busca">
            <input id="btn1" type="submit" value="Pesquisar">
        </form> 
        <table>
            <tbody>
        <%
            String busca = request.getParameter("busca");
            if (busca == "" || busca == null) {

                out.print("<br>");
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>Id_Prof</th>");
                out.print("<th>Nome_Prof</th>");
                out.print("<th>Email_Prof");
                out.print("<th>Senha_Prof</th>");
                out.print("<th>Alterar</th>");
                out.print("<th>Excluir</th>");
                out.print("</tr>");

                DAOProfessor dcp = new DAOProfessor();
                ArrayList<Professor> lista = dcp.showProfessores();
                for (int i = 0; i < lista.size(); i++) {
                out.print("<tr>");
                out.print("<td>" + lista.get(i).getId_prof() + "</td>");
                out.print("<td>" + lista.get(i).getNome_prof() + "</td>");
                out.print("<td>" + lista.get(i).getEmail_prof() + "</td>");
                out.print("<td>" + lista.get(i).getSenha_prof() + "</td>");
                out.print("<td><a href='alterar_professor.jsp?id_professor="
                        + lista.get(i).getId_prof()
                        + "&nome_professor=" + lista.get(i).getNome_prof()
                        + "&email_professor=" + lista.get(i).getEmail_prof()
                        + "&senha_professor=" + lista.get(i).getSenha_prof()
                            + "'>EDITAR</a></td>");
                out.print("<td><a href='executar_excluir.jsp?id_professor="
                        + lista.get(i).getId_prof()
                        + "&nome_professor" + lista.get(i).getNome_prof()
                            + "'>EXCLUIR</a></td>");
                    out.print("</tr>");
                }
            } else {
                out.print("<br>");
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>Id_Prof</th>");
                out.print("<th>Nome_Prof</th>");
                out.print("<th>Email_Prof");
                out.print("<th>Senha_Prof</th>");
                out.print("<th>Alterar</th>");
                out.print("<th>Excluir</th>");
                out.print("</tr>");
                DAOProfessor dcp = new DAOProfessor();
                ArrayList<Professor> lista = dcp.showNomeProfessor(request.getParameter("busca"));
                for (int i = 0; i < lista.size(); i++) {
                out.print("<tr>");
                out.print("<td>" + lista.get(i).getId_prof() + "</td>");
                out.print("<td>" + lista.get(i).getNome_prof() + "</td>");
                out.print("<td>" + lista.get(i).getEmail_prof() + "</td>");
                out.print("<td>" + lista.get(i).getSenha_prof() + "</td>");
                out.print("<td><a href='alterar_professor.jsp?id_professor="
                        + lista.get(i).getId_prof()
                        + "&nome_professor=" + lista.get(i).getNome_prof()
                        + "&email_professor=" + lista.get(i).getEmail_prof()
                        + "&senha_professor=" + lista.get(i).getSenha_prof()
                            + "'>Editar</a></td>");
                out.print("<td><a href='executar_excluir.jsp?id_professor="
                        + lista.get(i).getId_prof()
                        + "&nome_professor" + lista.get(i).getNome_prof()
                            + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }
        %>
    </tbody>
</table>
    </body>
</html>
