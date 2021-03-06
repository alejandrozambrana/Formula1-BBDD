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
        <%
        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        //mete el resultado de la consulta en la variable CodigoEscu
        ResultSet codigoEscu = s.executeQuery ("SELECT codigo, nombre FROM escuderia");
        %>
        
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
                    <div  class="input-field col s12 m6">
                        <select class="browser-default" id="Codigo Escuderia" name="CodigoEscuderia" required >
                            <option selected value="0" disabled ><%= request.getParameter("CodigoEscuderia")%></option>
                            <%
                            while (codigoEscu.next()) {
                            %>
                            <option value="<%=codigoEscu.getString("Codigo")%>"><%=codigoEscu.getString("Nombre")%></option>
                            <%
                            }
                            %>
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
