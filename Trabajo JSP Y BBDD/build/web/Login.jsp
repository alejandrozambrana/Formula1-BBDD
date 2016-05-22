<%-- 
    Document   : prueba
    Created on : 22-may-2016, 18:17:09
    Author     : Zambrana
--%>

<%@page import="java.util.HashMap"%>
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
        <title>Login</title>
    </head>
    <body>
        <div style="text-align: center; margin: 5% 0%;">
            <img src="imagenes/letras.png" style="width: 935px; height: 85px;">
        </div>
        <%
        //Crea el diccionario
        HashMap <String, String> acceso = new HashMap <String, String>();
        acceso.put("admin", "admin");
        acceso.put("usuario", "usuario");
        
        String usuario = request.getParameter("Usuario");
        String contraseña = request.getParameter("Contrasena");
        
        if(acceso.containsKey(usuario) == true){
            if(acceso.get(usuario).equals(contraseña)){
               %>
                <div style="text-align: center;  ">
                    <h4>Accediendo</h4>
                </div>
                <form method="get" action="Acceso.jsp"class="col s12">
                    <input type="hidden" name="Usuario"/>
                    <input type="hidden" name="Contrasena"/>
                    <META HTTP-EQUIV="REFRESH" CONTENT="2;URL=Acceso.jsp">
                </form>
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
                <%
            } else {
              %>
                <form method="get" action="Login.jsp" class="col s12">
                    <div id="anadir" class="row">
                        <h4 style="text-align: center; padding-top: 3%; color:black; font-weight: bold; ">Iniciar Sesion</h4>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix left">account_circle</i>
                                <input type="text" placeholder="usuario" name="Usuario" />
                            </div>
                            <div class="input-field col s12">
                                <i class="material-icons prefix left">vpn_key</i>
                                <input type="password" placeholder="contraseña" name="Contrasena" />
                            </div>
                            <p style="text-align: center; color: black;">Contraseña Incorrecta</p>
                            <div style="text-align: center;">
                                <button type="submit"  class="waves-effect waves-light btn blue"><i class="material-icons left">lock_open</i>Iniciar</button>
                            </div>
                        </div>
                    </div>
                </form>
              <%
            }
        }else{
                %>
                <form method="get" action="Login.jsp" class="col s12">
                    <div id="anadir" class="row">
                        <h4 style="text-align: center; padding-top: 3%; color:black; font-weight: bold;">Iniciar Sesion</h4>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix left">account_circle</i>
                                <input type="text" placeholder="usuario" name="Usuario" />
                            </div>
                            <div class="input-field col s12">
                                <i class="material-icons prefix left">vpn_key</i>
                                <input type="password" placeholder="contraseña" name="Contrasena" />
                            </div>
                            <div style="text-align: center;">
                                <button type="submit"  class="waves-effect waves-light btn blue"><i class="material-icons left">lock_open</i>Iniciar</button>
                            </div>
                        </div>
                    </div>
                </form>
       <%
        }
        %>
        </div>
    </body>
</html>
