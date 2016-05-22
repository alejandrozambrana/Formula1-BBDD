package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class Acceso_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Formula1</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"text-align: center; margin: 5% 0%;\">\n");
      out.write("            <img src=\"imagenes/letras.png\" style=\"width: 935px; height: 85px;\">\n");
      out.write("        </div>\n");
      out.write("        ");

        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");
        
        
      out.write("\n");
      out.write("        <a href=\"Escuderia.jsp\" class=\"waves-effect waves-light btn blue\" style=\" float:left; margin: 50px 0px 50px 30%;\" ><i class=\"material-icons left\">reorder</i> Escuderia</a>\n");
      out.write("        <a href=\"Pilotos.jsp\" class=\"waves-effect waves-light btn blue\" style=\"float:right; margin: 50px 33% 50px 0px;\" ><i class=\"material-icons left\">reorder</i> Pilotos</a>\n");
      out.write("        \n");
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
