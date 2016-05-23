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
        <META HTTP-EQUIV="REFRESH" CONTENT="2;URL=Escuderia.jsp">
        <title>Borrar Escuderia</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 20%; ">
            <%
            // carga la base de datos con este accedemos a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            //Ejecuta esta consulta
            s.execute ("DELETE FROM escuderia WHERE Codigo=" + request.getParameter("Codigo"));
            %>
            <h1>Borrando Escuderia</h1>
        </div>
        <div style="text-align: center;">
            <div class="preloader-wrapper big active">
                <div class="spinner-layer spinner-blue-only">
                  <div class="circle-clipper left">
                    <div class="circle"></div>
                  </div><div class="gap-patch">
                    <div class="circle"></div>
                  </div><div class="circle-clipper right">
                    <div class="circle"></div>
                  </div>
                </div>
            </div>
        </div>
    </body>
</html>
