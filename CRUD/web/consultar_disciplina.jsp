<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Consultar Disciplina</title>
    </head>
    <body>
        <p class="inicio">
            <a href="index.jsp"<h1>INICIO</h1></a>
        </p>
        <h1>Disciplinas!</h1>
        <form action="consultar_disciplina.jsp" method="post">
            <input placeholder="Pesquisar Por Nome" type="text" size="30" name="busca" id="busca">
            <input id="btn1" type="submit" value="Pesquisar">
        </form>       
        <%
            String busca = request.getParameter("busca");

            if (busca == "" || busca == null) {
                out.print("<div>");
                out.print("<br>");
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>Id</th>");
                out.print("<th>Nome Dcpn</th>");
                out.print("<th>Carga H Dcpn");
                out.print("<th>Alterar</th>");
                out.print("<th>Excluir</th>");
                out.print("</tr>");

                DAODisciplina dcp = new DAODisciplina();
                ArrayList<Disciplina> lista = dcp.showDisciplinas();
                for (int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(i).getId_dcpn() + "</td>");
                    out.print("<td>" + lista.get(i).getNome_dcpn() + "</td>");
                    out.print("<td>" + lista.get(i).getCargah_dcpn() + "</td>");
                    out.print("<td><a href='alterar_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId_dcpn()
                            + "&nome_disciplina=" + lista.get(i).getNome_dcpn()
                            + "&cargahoraria_disciplina=" + lista.get(i).getCargah_dcpn()
                            + "'>Editar</a></td>");
                    out.print("<td><a href='executar_excluir.jsp?id_disciplina="
                            + lista.get(i).getId_dcpn()
                            + "&nome_disciplina=" + lista.get(i).getNome_dcpn()
                            + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            } else {
                out.print("<div>");
                out.print("<br>");
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>Id</th>");
                out.print("<th>Nome Dcpn</th>");
                out.print("<th>Carga H Dcpn");
                out.print("<th>Alterar</th>");
                out.print("<th>Excluir</th>");
                out.print("</tr>");
                DAODisciplina dcp = new DAODisciplina();
                ArrayList<Disciplina> lista = dcp.showNomeDisciplinas(request.getParameter("busca"));
                for (int i = 0; i < lista.size(); i++) {
                    out.print("<tr>");
                    out.print("<td>" + lista.get(i).getId_dcpn() + "</td>");
                    out.print("<td>" + lista.get(i).getNome_dcpn() + "</td>");
                    out.print("<td>" + lista.get(i).getCargah_dcpn() + "</td>");
                    out.print("<td><a href='atualizar_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId_dcpn()
                            + "&nome_disciplina=" + lista.get(i).getNome_dcpn()
                            + "&cargahoraria_disciplina=" + lista.get(i).getCargah_dcpn()
                            + "'>Editar</a></td>");
                    out.print("<td><a href='executar_excluir.jsp?id_disciplina="
                            + lista.get(i).getId_dcpn()
                            + "&nome_disciplina=" + lista.get(i).getNome_dcpn()
                            + "'>Excluir</a></td>");
                    out.print("</tr>");
                }
            }
        %>
    </body>
</html>

