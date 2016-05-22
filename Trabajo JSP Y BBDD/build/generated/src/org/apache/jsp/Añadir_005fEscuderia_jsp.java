package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class Añadir_005fEscuderia_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <META HTTP-EQUIV=\"REFRESH\" CONTENT=\"3;URL=Escuderia.jsp\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        // carga la base de datos con este accedemos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula1","root", "");
        Statement s = conexion.createStatement();
        
        request.setCharacterEncoding("UTF-8");

        // Comprueba si existe el codigo de la escuderia
        String consultaEscuderia = "SELECT * FROM Escuderia WHERE CODIGO="
                                    //valueOf convierte el dato de entre parentesis a el tipo de dato indicado antes del punto 
                                    + Integer.valueOf(request.getParameter("Codigo"));      
        //mete el resultado de la consulta en la variable CodEscuderia
        ResultSet CodEscuderia = s.executeQuery (consultaEscuderia);
              
        //mete los datos en la ultima fila
        CodEscuderia.last();
 
        //getRow devuelve el numero de filas de CodEscuderia
        if (CodEscuderia.getRow() == 0) {
            String AñadirEscuderia = "INSERT INTO Escuderia VALUES (" + Integer.valueOf(request.getParameter("Codigo"))
                           + ", '" + request.getParameter("Nombre")
                           + "', '" + request.getParameter("Motor")+ "')";
            s.execute(AñadirEscuderia);
            out.println("<h1>Escuderia Añadida.</h1>");
        } else {
            out.println("<h1>La escuderia "
                        + request.getParameter("Codigo") + " ya existe. No se ha podido añadir</h1>");
        }
        //Cierra la base de datos
        conexion.close();
        
      out.write("  \n");
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
