<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar_Prof</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <form name="Formulario" method="post" action="executar_atualizar.jsp">
            <h1>Alterar Professor</h1>
            <label>ID_Prof</label><br>
            <p>
                <input type="text" name="id_professor" value="<%=request.getParameter("id_professor")%>" readonly/><br>
            </p>
            
            <label>Novo_Nome</label><br>
            <p>
                <input type="text" name="nome_professor" value="<%=request.getParameter("nome_professor")%>" required="required"/><br>
            </p>
 
            <label>Novo_Email</label><br>
            <p>
                <input type="email" name="email_professor" value="<%=request.getParameter("email_professor")%>" required="required"/><br>
            </p>            
            
            <label for="password">Nova_Senha</label><br>
            <p>
                <input type="password" name="senha_professor" value="<%=request.getParameter("senha_professor")%>" required="required"/><br>
            </p>
            <p class="enviar">
            <input type="submit" value="ATUALIZAR"/>
            </p>
                       
        </form>
        
    </body>
</html>
