package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class Pilotos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <!--css materialize-->\n");
      out.write("        <link href=\"materialize/css/materialize.css\" rel=\"stylesheet\">\n");
      out.write("        <!--Mi estilo-->\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\">\n");
      out.write("        <!--iconos materialize-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"imagenes/favicon.png\" type=\"image/ico\" />\n");
      out.write("        <title>Pilotos</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"text-align: center; margin-top: 5px;\">\n");
      out.write("            <img src=\"imagenes/logo.png\" style=\"width: 150px; height: 70px;\">\n");
      out.write("        </div>\n");
      out.write("        <table class=\"striped\">\n");
      out.write("        ");

        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        //mete el resultado de la consulta en la variable listado
        ResultSet listado = s.executeQuery ("SELECT * FROM pilotos");
       
        
        
      out.write("\n");
      out.write("        <tr><th>Cod. Piloto</th><th>Nombre</th><th>Apellido</th><th>F.Nacimiento</th><th>Nacionalidad</th>\n");
      out.write("        <th>Titulos</th><th>Nº Monoplaza</th><th>Escuderia</th><th></th><th></th></tr>\n");
      out.write("        ");

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
            //muestra el nombre de la escuderia en ve de el codigo
            String escuderia = "";
              switch(Integer.valueOf(listado.getString("CodigoEscuderia"))) {
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
            out.println("<td>" + escuderia + "</td>");
        
      out.write("\n");
      out.write("        <!--Modificar Piloto-->\n");
      out.write("        <td><form method=\"get\" action=\"ModificarPilotos.jsp\">\n");
      out.write("            <input type=\"hidden\" name=\"Codigo\" value=\"");
      out.print(listado.getString("Codigo") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"nombre\" value=\"");
      out.print(listado.getString("nombre") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"Apellidos\" value=\"");
      out.print(listado.getString("Apellidos") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"Fecha_nacimiento\" value=\"");
      out.print(listado.getString("Fecha_nacimiento") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"Nacionalidad\" value=\"");
      out.print(listado.getString("Nacionalidad") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"Titulos\" value=\"");
      out.print(listado.getString("Titulos") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"Numero\" value=\"");
      out.print(listado.getString("Numero") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"CodigoEscuderia\" value=\"");
      out.print(listado.getString("CodigoEscuderia") );
      out.write("\">\n");
      out.write("            <button type=\"submit\"  class=\"btn-floating blue\"><i class=\"material-icons left\">mode_edit</i></button>\n");
      out.write("\t</form></td>\n");
      out.write("        <!--borra Piloto-->\n");
      out.write("        <td><form method=\"get\" action=\"borrarPiloto.jsp\">\n");
      out.write("          <input type=\"hidden\" name=\"Codigo\" value=\"");
      out.print(listado.getString("Codigo") );
      out.write("\"/>\n");
      out.write("          <button type=\"submit\"  class=\"btn-floating blue\"><i class=\"material-icons left\">delete</i></button>\n");
      out.write("        </form></td>\n");
      out.write("        ");
 
        }
        //Cerrar la conexion con la base de datos
        conexion.close();
        
      out.write("\n");
      out.write("        </table>    \n");
      out.write("        <a href=\"Escuderia.jsp\" class=\"waves-effect waves-light btn blue\" style=\"float: left; margin: 50px 0px 50px 105px;\" ><i class=\"material-icons left\">reorder</i> Ver Escuderia</a>\n");
      out.write("        <a href=\"Acceso.jsp\" class=\"waves-effect waves-light btn blue\" style=\"float: right; margin: 50px 105px 50px 0px;\" ><i class=\"material-icons left\">replay</i> Volver al Acceso</a>\n");
      out.write("        <div class=\"fixed-action-btn\" style=\"bottom: 45px; right: 24px;\">\n");
      out.write("            <a href=\"Añadir_Datos_Piloto.jsp\" class=\"btn-floating btn-large blue\">\n");
      out.write("              <i class=\"large material-icons\">playlist_add</i>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
