<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Escuderia</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 5px;">
            <img src="imagenes/logo.png" style="width: 150px; height: 70px;">
        </div>
        <table class="striped">
        <%
        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        //mete el resultado de la consulta en la variable listado
        ResultSet listado = s.executeQuery ("SELECT * FROM escuderia");
       
        
        %>
        <tr><th>Cod. Escuderia</th><th>Nombre</th><th>Motor</th><th></th><th></th></tr>
        <%
        //muestra los datos de la consulta
        while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("Codigo") + "</td>");
            out.println("<td>" + listado.getString("Nombre") + "</td>");
            out.println("<td>" + listado.getString("Motor") + "</td>");
        
        %>
        <!--Modificar escuderia-->
        <td><form method="get" action="ModificarEscuderia.jsp">
            <input type="hidden" name="Codigo" value="<%=listado.getString("Codigo") %>">
            <input type="hidden" name="Nombre" value="<%=listado.getString("Nombre") %>">
            <input type="hidden" name="Motor" value="<%=listado.getString("Motor") %>">
            <button type="submit"  class="btn-floating blue"><i class="material-icons left">mode_edit</i></button>
	</form></td>
        <!--borra escuderia-->
        <td><form method="get" action="borraEscuderia.jsp">
            <input type="hidden" name="Codigo" value="<%=listado.getString("Codigo") %>"/>
            <button type="submit"  class="btn-floating blue"><i class="material-icons left">delete</i></button>
        </form></td>
        <% 
        }
        //Cerrar la conexion con la base de datos
        conexion.close();
        %>
        </table>
        
        <!--Botones-->
        <a href="Pilotos.jsp" class="waves-effect waves-light btn blue" style="float: left; margin: 50px 0px 50px 105px;" ><i class="material-icons left">reorder</i> Ver pilotos</a>
        <a href="Acceso.jsp" class="waves-effect waves-light btn blue" style="float: right; margin: 50px 105px 50px 0px;" ><i class="material-icons left">replay</i> Volver al Acceso</a>
        <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
            <a href="Añadir_Datos_Escuderia.jsp" class="btn-floating btn-large blue">
              <i class="large material-icons">playlist_add</i>
            </a>
        </div>
    </body>
</html>
