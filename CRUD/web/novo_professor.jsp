<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro_Disciplina</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <form name="Formulario" method="post" action="inserir.jsp">
            <h1>Adicionar Professor</h1>
            <label>Nome</label><br>
            <p class="campo">
                <input type="text" name="nome_professor" placeholder="Nome Da Professor" required="required"/><br>
            </p>
            
            <label for="email">Email</label><br>
            <p class="campo">
                <input type="email" name="email_professor" placeholder="Email Professor" required="required"/><br>
            </p>
             <label for="email">Senha</label><br>
            <p class="campo">
                <input type="password" name="senha_professor" placeholder="Senha Professor" required="required"/><br>
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