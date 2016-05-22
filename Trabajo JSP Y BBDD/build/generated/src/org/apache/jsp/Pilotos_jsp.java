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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Pilotos</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table>\n");
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
      out.write("        <th>Titulos</th><th>Nº Monoplaza</th><th>Cod.Escuderia</th></tr>\n");
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
            out.println("<td>" + listado.getString("Codigo Escuderia") + "</td>");
        }
        
      out.write("\n");
      out.write("        </table>\n");
      out.write("       \n");
      out.write("        <button><a href=\"Acceso.jsp\"> Volver al Acceso</button>\n");
      out.write("        <button><a href=\"Escuderia.jsp\"> Ver Escuderias</button>\n");
      out.write("        <button><a href=\"Añadir_Datos_Piloto.jsp\"> Añadir Piloto</button>\n");
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
