package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class Escuderia_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\">\n");
      out.write("        <title>Escuderia</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table class=\"responsive-table\">\n");
      out.write("        ");

        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        //mete el resultado de la consulta en la variable listado
        ResultSet listado = s.executeQuery ("SELECT * FROM Escuderia");
       
        
        
      out.write("\n");
      out.write("        <tr><th>Cod. Escuderia</th><th>Nombre</th><th>Motor</th></tr>\n");
      out.write("        ");

        //muestra los datos de la consulta
        while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("Codigo") + "</td>");
            out.println("<td>" + listado.getString("Nombre") + "</td>");
            out.println("<td>" + listado.getString("Motor") + "</td>");
        
        
      out.write("\n");
      out.write("        <!--Modificar escuderia-->\n");
      out.write("        <td><form method=\"get\" action=\"ModificarEscuderia.jsp\">\n");
      out.write("            <input type=\"hidden\" name=\"Codigo\" value=\"");
      out.print(listado.getString("Codigo") );
      out.write("\">\n");
      out.write("             <input type=\"hidden\" name=\"Nombre\" value=\"");
      out.print(listado.getString("Nombre") );
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"Motor\" value=\"");
      out.print(listado.getString("Motor") );
      out.write("\">\n");
      out.write("            <button type=\"submit\"> Modificar</button>\n");
      out.write("\t</form></td>\n");
      out.write("        <!--borra escuderia-->\n");
      out.write("        <td><form method=\"get\" action=\"borraEscuderia.jsp\">\n");
      out.write("            <input type=\"hidden\" name=\"Codigo\" value=\"");
      out.print(listado.getString("Codigo") );
      out.write("\"/>\n");
      out.write("            <button type=\"submit\">Eliminar</button>\n");
      out.write("        </form></td>\n");
      out.write("        ");
 
        }
        //Cerrar la conexion con la base de datos
        conexion.close();
        
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <button><a href=\"Acceso.jsp\"> Volver al Acceso</button>\n");
      out.write("        <button><a href=\"Pilotos.jsp\"> Ver pilotos</button>\n");
      out.write("        <button><a href=\"Añadir_Datos_Escuderia.jsp\"> Añadir Escuderia</button>\n");
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
