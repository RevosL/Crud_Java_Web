<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro_Disciplina</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <form name="Formulario" method="post" action="inserir.jsp">
            <h1>Adicionar Disciplina</h1>
            <label>Nome Disciplina</label><br>
            <p class="campo">
                <input type="text" name="nome_disciplina" placeholder="Nome Da Disciplina" required="required"/><br>
            </p>
            
            <label for="email">Carga Horaria</label><br>
            <p class="campo">
                <input name="cargahoraria_disciplina" placeholder="Carga Horaria Disciplina" required="required"/><br>
            </p>
            <p class="enviar">
            <input type="submit" value="ADICIONAR"/>
            </p>
                       
        </form> 
        <form>
         <p  class="enviar">
            <a href="index.jsp"><h1>INICIO</h1> </a>
        </p>
        </form>
    </body>
</html>