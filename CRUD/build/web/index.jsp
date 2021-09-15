<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>INICIO</title>
    </head>
    <body>
        <form method="post" action="consultar_disciplina.jsp">
            <h1>Consultar Disciplinas</h1>               
            <p  class="enviar">
                <input type="submit" name="Consultar" value="Pesquisar">
            </p>
            
        </form>
        <form method="post" action="nova_disciplina.jsp">
            <h1>Adicionar Disciplina</h1>              
            <p  class="enviar">
                <input type="submit" name="Consultar" value="Adicionar">
            </p>
            
        </form>
        <form method="post" action="consultar_professor.jsp">
            <h1>Consultar Professor</h1>               
            <p  class="enviar">
                <input type="submit" name="Consultar" value="Pesquisar">
            </p>
            
        </form>
        <form method="post" action="novo_professor.jsp">
             <h1>Adicionar Professor</h1>             
            <p  class="enviar">
                <input type="submit" name="Consultar" value="Adicionar">
            </p>
            
        </form>
    </body>
</html>
