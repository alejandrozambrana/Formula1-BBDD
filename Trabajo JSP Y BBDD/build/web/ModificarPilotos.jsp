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
        <title>Modificar Pilotos</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 5px;">
            <img src="imagenes/logo.png" style="width: 150px; height: 70px;">
        </div>
        <%request.setCharacterEncoding("UTF-8");%>
        <div id="anadir" class="row">
            <h4 style="text-align: center; padding-top: 3%; color:black; font-weight: bold;">Modificar Pilotos</h4>
            <form method="get" action="GuardarModificarPilotos.jsp" class="col s12">
                <div class="row">
                    <div class="input-field col s3">
                        <!--el readonly se pone para no poder modificar el codigo que sea solo lectura-->
                        <input type="text" size="10" name="Codigo" value="<%= request.getParameter("Codigo") %>" readonly>
                    </div>
                    <div class="input-field col s9">
                        <input type="text" size="30" name="nombre" value="<%= request.getParameter("nombre") %>">
                    </div>
                    <div class="input-field col s12">
                        <input type="text" size="30" name="Apellidos" value="<%= request.getParameter("Apellidos") %>">
                    </div>
                    <div class="input-field col s5">
                        <input type="date" size="10" name="Fecha_nacimiento" value="<%= request.getParameter("Fecha_nacimiento") %>">
                    </div>
                    <div class="input-field col s7">
                        <input type="text" size="30" name="Nacionalidad" value="<%= request.getParameter("Nacionalidad") %>">
                    </div>
                    <div class="input-field col s6">
                        <input type="text" size="5" name="Titulos" value="<%= request.getParameter("Titulos") %>">
                    </div>
                    <div class="input-field col s6">
                        <input type="text" size="5" name="Numero" value="<%= request.getParameter("Numero") %>">
                    </div>
                    <%
                      String escuderia = "";
                        switch(Integer.valueOf(request.getParameter("CodigoEscuderia"))) {
                            case 1:
                              escuderia="Mercedes AMG Petronas";
                              break;
                            case 2:
                              escuderia="Ferrari";
                              break;  
                            case 3:
                              escuderia="Williams";
                              break; 
                            case 4:
                              escuderia="Red Bull";
                              break;
                            case 5:
                              escuderia="Force India";
                              break;
                            case 6:
                              escuderia="Renault";
                              break;
                            case 7:
                              escuderia="Toro Rosso";
                              break;
                            case 8:
                              escuderia="Sauber";
                              break;
                            case 9:
                              escuderia="McLaren Honda";
                              break;
                            case 10:
                              escuderia="Manor";
                              break;
                            case 11:
                              escuderia="Haas";
                              break;
                              default:
                          }
                    %>
                    <div  class="input-field col s12 m6">
                        <select class="browser-default" id="Codigo Escuderia" name="CodigoEscuderia" required >
                            <option selected value="0" disabled ><%= escuderia%></option>
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
                        <input type="hidden" size="5" name="CodigoEscuderia" value="<%= request.getParameter("CodigoEscuderia") %>">
                    </div>
                    <div class="input-field col s12 " style="text-align: center;">
                        <button type="submit" class="waves-effect waves-light btn blue" ><i class="material-icons left">mode_edit</i>Aceptar</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
