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
        <META HTTP-EQUIV="REFRESH" CONTENT="3;URL=Pilotos.jsp">
        <title>Añadir Piloto</title>
    </head>
    <body>
        <div style="text-align: center; margin-top: 20%; ">
            <%
            // carga la base de datos con este accedemos a la base de datos
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            // Comprueba si existe el codigo de la escuderia
            String consultaEscuderia = "SELECT * FROM Pilotos WHERE CODIGO="
                                        //valueOf convierte el dato de entre parentesis a el tipo de dato indicado antes del punto 
                                        + Integer.valueOf(request.getParameter("Codigo"));      
            //mete el resultado de la consulta en la variable CodEscuderia
            ResultSet CodEscuderia = s.executeQuery (consultaEscuderia);

            //mete los datos en la ultima fila
            CodEscuderia.last();

            //getRow devuelve el numero de filas de CodEscuderia
            if (CodEscuderia.getRow() == 0) {
                String AñadirEscuderia = "INSERT INTO Pilotos VALUES (" + Integer.valueOf(request.getParameter("Codigo"))
                                + ", '" + request.getParameter("Nombre")
                                + "', '" + request.getParameter("Apellidos")
                                + "', '" + request.getParameter("Fecha_nacimiento")
                                + "', '" + request.getParameter("Nacionalidad")
                                + "', " + Integer.valueOf(request.getParameter("Titulos"))
                                + ", " + Integer.valueOf(request.getParameter("Numero"))
                                + ", " + Integer.valueOf(request.getParameter("CodigoEscuderia"))+ ")";

                s.execute(AñadirEscuderia);
            %>
                <h1>Añadiendo Piloto</h1>
            <%
            } else {
            %>
                <h2>El piloto ya existe. No se ha podido añadir</h2>
            <%
            }
            //Cierra la base de datos
            conexion.close();
            %>  
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
