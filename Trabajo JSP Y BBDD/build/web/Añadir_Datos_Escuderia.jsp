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
        <title>Añadir Escuderia</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 5px;">
            <img src="imagenes/logo.png" style="width: 150px; height: 70px;">
        </div>
        <div id="anadir" class="row">
            <p style="text-align: center; padding-top: 3%; color:black; font-weight: bold;">Añadir Escuderia</p>
            <form method="get" action="Añadir_Escuderia.jsp" class="col s12">
                <div class="row">
                    <div class="input-field col s3">
                        <input placeholder="Codigo Escuderia" type="text" name="Codigo" size="10" class="validate" required>
                    </div>
                    <div class="input-field col s9">
                        <input placeholder="Nombre" type="text" name="Nombre" size="30" class="validate" required>
                    </div>
                    <div class="input-field col s12">
                        <input placeholder="Motor" type="text" name="Motor" size="30" class="validate" required>
                    </div>
                    <div style="text-align: center;">
                        <button type="submit" class="waves-effect waves-light btn blue" ><i class="material-icons left">library_add</i>Añadir</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
