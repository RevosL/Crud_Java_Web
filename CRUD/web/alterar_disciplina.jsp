<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar_Dcpn</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <form name="Formulario" method="post" action="executar_atualizar.jsp">
            <h1>Alterar Disciplina</h1>
            <label>ID_DCPN</label><br>
            <p>
                <input type="text" name="id_disciplina" value="<%=request.getParameter("id_disciplina")%>" readonly/><br>
            </p>
            
            <label>NOME_DCPN</label><br>
            <p>
                <input type="text" name="nome_disciplina" value="<%=request.getParameter("nome_disciplina")%>" required="required"/><br>
            </p>
            
            <label>CARGAH_DCPN</label><br>
            <p>
                <input type="text" name="cargahoraria_disciplina" value="<%=request.getParameter("cargahoraria_disciplina")%>" required="required"/><br>
            </p>
            <p class="enviar">
            <input type="submit" value="ATUALIZAR"/>
            </p>
                       
        </form>
        
    </body>
</html>
