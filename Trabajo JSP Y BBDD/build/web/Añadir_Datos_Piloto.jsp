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
        <title>Añadir Piloto</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 5px;">
            <img src="imagenes/logo.png" style="width: 150px; height: 70px;">
        </div>
        <div id="anadir" class="row">
            <h4 style="text-align: center; padding-top: 3%; color:black; font-weight: bold;">Añadir Piloto</h4>
            <form method="get" action="Añadir_Piloto.jsp" class="col s12">
                <div class="row">
                    <div class="input-field col s3">
                        <input type="text" placeholder="Codigo Piloto" name="Codigo" size="10" class="validate" required>
                    </div>
                    <div class="input-field col s9">
                        <input type="text" placeholder="Nombre" name="Nombre" size="30" class="validate" required>
                    </div>
                    <div class="input-field col s12">
                        <input type="text" placeholder="Apellidos" name="Apellidos" size="40" class="validate" required>
                    </div>
                    <div class="input-field col s5">
                        <input type="date" name="Fecha_nacimiento" size="10" required>
                    </div>
                    <div class="input-field col s7">
                     <input type="text" placeholder="Nacionalidad" name="Nacionalidad" size="20" class="validate" required>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" placeholder="Titulos Ganados" name="Titulos" size="2" class="validate" required>
                    </div>
                    <div class="input-field col s6">
                        <input type="text" placeholder="Numero del Monoplaza" name="Numero" size="5" class="validate" required>
                    </div>
                    <div  class="input-field col s12 m6">
                        <select class="browser-default" id="Codigo Escuderia" name="CodigoEscuderia" required >
                            <option selected value="0" disabled >Selecciona una Escuderia</option>
                            <option value="1">Mercedes AMG Petronas</option>
                            <option value="2">Ferrari</option>
                            <option value="3">Williams</option>
                            <option value="4">Red Bull</option>
                            <option value="5">Force India</option>
                            <option value="6">Renault</option>
                            <option value="7">Toro Rosso</option>
                            <option value="8">Sauber</option>
                            <option value="9">McLaren Honda</option>
                            <option value="10">Manor</option>
                            <option value="11">Haas</option>
                        </select>
                    </div>
                    <div class="input-field col s12 " style="text-align: center;">
                        <button type="submit" class="waves-effect waves-light btn blue" ><i class="material-icons left">library_add</i>Añadir</button>
                    </div>
                </div>
            </form>            
        </div>
    </body>
</html>
