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
        <title>Formula1</title>
    </head>
    <body>
        <div style="text-align: center; margin: 5% 0%;">
            <img src="imagenes/letras.png" style="width: 935px; height: 85px;">
        </div>
        <%
        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        %>
        <a href="Escuderia.jsp" class="waves-effect waves-light btn blue" style=" float:left; margin: 50px 0px 50px 30%;" ><i class="material-icons left">reorder</i> Escuderia</a>
        <a href="Pilotos.jsp" class="waves-effect waves-light btn blue" style="float:right; margin: 50px 33% 50px 0px;" ><i class="material-icons left">reorder</i> Pilotos</a>
        
    </body>
</html>
