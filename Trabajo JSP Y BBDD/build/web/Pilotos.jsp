<%@page import="java.util.HashMap"%>
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
        <title>Pilotos</title>
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
        
        //mete el resultado de la consulta en la variable CodigoEscu
        ResultSet codigoEscu = s.executeQuery ("SELECT e.codigo, e.nombre FROM escuderia e, pilotos p WHERE e.CODIGO=p.codigoEscuderia GROUP BY e.NOMBRE ORDER BY 1");
        //mete en el hashMap el codigo y el nombre de la escuderia
        HashMap <String, String> nomEscu = new HashMap <String, String>();
        while (codigoEscu.next()) {
        nomEscu.put(codigoEscu.getString("Codigo"), codigoEscu.getString("Nombre"));
        }
        
        //mete el resultado de la consulta en la variable listado
        ResultSet listado = s.executeQuery ("SELECT * FROM pilotos");
       
        
        %>
        <tr><th>Cod. Piloto</th><th>Nombre</th><th>Apellido</th><th>F.Nacimiento</th><th>Nacionalidad</th>
        <th>Titulos</th><th>Nº Monoplaza</th><th>Escuderia</th><th></th><th></th></tr>
        <%
        //muestra los datos de la consulta
        while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("Codigo") + "</td>");
            out.println("<td>" + listado.getString("nombre") + "</td>");
            out.println("<td>" + listado.getString("Apellidos") + "</td>");
            out.println("<td>" + listado.getString("Fecha_nacimiento") + "</td>");
            out.println("<td>" + listado.getString("Nacionalidad") + "</td>");
            out.println("<td>" + listado.getString("Titulos") + "</td>");
            out.println("<td>" + listado.getString("Numero") + "</td>");
            if(nomEscu.containsKey(listado.getString("CodigoEscuderia"))){
                out.println("<td>" + nomEscu.get(listado.getString("CodigoEscuderia")) + "</td>");
            }
        %>
        <!--Modificar Piloto-->
        <td><form method="get" action="ModificarPilotos.jsp">
            <input type="hidden" name="Codigo" value="<%=listado.getString("Codigo") %>">
            <input type="hidden" name="nombre" value="<%=listado.getString("nombre") %>">
            <input type="hidden" name="Apellidos" value="<%=listado.getString("Apellidos") %>">
            <input type="hidden" name="Fecha_nacimiento" value="<%=listado.getString("Fecha_nacimiento") %>">
            <input type="hidden" name="Nacionalidad" value="<%=listado.getString("Nacionalidad") %>">
            <input type="hidden" name="Titulos" value="<%=listado.getString("Titulos") %>">
            <input type="hidden" name="Numero" value="<%=listado.getString("Numero") %>">
            <input type="hidden" name="CodigoEscuderia" value="<%=nomEscu.get(listado.getString("CodigoEscuderia")) %>">
            <button type="submit"  class="btn-floating blue"><i class="material-icons left">mode_edit</i></button>
	</form></td>
        <!--borra Piloto-->
        <td><form method="get" action="borrarPiloto.jsp">
          <input type="hidden" name="Codigo" value="<%=listado.getString("Codigo") %>"/>
          <button type="submit"  class="btn-floating blue"><i class="material-icons left">delete</i></button>
        </form></td>
        <% 
        }
        //Cerrar la conexion con la base de datos
        conexion.close();
        %>
        </table>    
        <a href="Escuderia.jsp" class="waves-effect waves-light btn blue" style="float: left; margin: 50px 0px 50px 105px;" ><i class="material-icons left">reorder</i> Ver Escuderia</a>
        <a href="Acceso.jsp" class="waves-effect waves-light btn blue" style="float: right; margin: 50px 105px 50px 0px;" ><i class="material-icons left">replay</i> Volver al Acceso</a>
        <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
            <a href="Añadir_Datos_Piloto.jsp" class="btn-floating btn-large blue">
              <i class="large material-icons">playlist_add</i>
            </a>
        </div>
    </body>
</html>
