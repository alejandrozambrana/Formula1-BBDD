<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <!--css materialize-->
        <link href="materialize/css/materialize.css" rel="stylesheet">
        <!--Mi estilo-->
        <link href="css/estilos.css" rel="stylesheet">
        <!--iconos materialize-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="shortcut icon" href="imagenes/favicon.png" type="image/ico" />
        <title>Modificar Escuderia</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 5px;">
            <img src="imagenes/logo.png" style="width: 150px; height: 70px;">
        </div>
        <%request.setCharacterEncoding("UTF-8");%>
        <div id="anadir" class="row">
            <h4 style="text-align: center; padding-top: 3%; color:black; font-weight: bold;">Modificar Escuderia</h4>
            <form method="get" action="GuardarModificarEscuderia.jsp" class="col s12">
                <div class="row">
                    <div class="input-field col s3">
                        <!--el readonly se pone para no poder modificar el codigo que sea solo lectura-->
                        <input type="text" id="Codigo" size="10" name="Codigo" value="<%= request.getParameter("Codigo") %>" readonly>
                    </div>
                    <div class="input-field col s9">
                        <input type="text" size="30" name="Nombre" value="<%= request.getParameter("Nombre") %>">
                    </div>
                    <div class="input-field col s12">
                        <input type="text" size="30" name="Motor" value="<%= request.getParameter("Motor") %>">
                    </div>
                </div>
                <div style="text-align: center; margin-bottom: 20px;">
                    <button type="submit" class="waves-effect waves-light btn blue" ><i class="material-icons left">mode_edit</i>Aceptar</button>
                </div>
            </form>
        </div>
    </body>
</html>
