package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Añadir_005fDatos_005fPiloto_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Añadir Piloto</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table>\n");
      out.write("            <tr><th>Cod. Piloto</th><th>Nombre</th><th>Apellido</th><th>F.Nacimiento</th><th>Nacionalidad</th>\n");
      out.write("            <th>Titulos</th><th>Nº Monoplaza</th><th>Cod.Escuderia</th></tr>\n");
      out.write("            <form method=\"get\" action=\"Añadir_Piloto.jsp\">\n");
      out.write("                ");

                if(!String.valueOf(request.getParameter("filasAnadidas")).equals("null")){
                    int a =Integer.parseInt(request.getParameter("filasAnadidas"));
                    for(int i = 0; i < a ; i++){
                
      out.write("\n");
      out.write("                <tr><td><input type=\"text\" name=\"Codigo\" size=\"10\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Nombre\" size=\"30\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Apellidos\" size=\"40\"></td>\n");
      out.write("                    <td><input type=\"date\" name=\"Fecha_nacimiento\" size=\"10\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Nacionalidad\" size=\"20\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Titulos\" size=\"2\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Numero\" size=\"5\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Codigo Escuderia\" size=\"5\"></td>\n");
      out.write("                    <td><input type=\"submit\" value=\"Añadir\"></td></tr>   \n");
      out.write("              \n");
      out.write("                ");

                }}else{

      out.write("\n");
      out.write("                    <tr><td><input type=\"text\" name=\"Codigo\" size=\"10\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Nombre\" size=\"30\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Apellidos\" size=\"40\"></td>\n");
      out.write("                    <td><input type=\"date\" name=\"Fecha_nacimiento\" size=\"10\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Nacionalidad\" size=\"20\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Titulos\" size=\"2\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Numero\" size=\"5\"></td>\n");
      out.write("                    <td><input type=\"text\" name=\"Codigo Escuderia\" size=\"5\"></td>\n");
      out.write("                    <td><input type=\"submit\" value=\"Añadir\"></td></tr>\n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("            </form>            \n");
      out.write("        </table>\n");
      out.write("            <form method=\"get\" action=\"Añadir_Datos_Piloto.jsp\">\n");
      out.write("                Cuantas filas quieres añadir:\n");
      out.write("                <input type=\"text\" name=\"filasAnadidas\" value=\"1\" size=\"10\">\n");
      out.write("                <td><input type=\"submit\" value=\"Añadir\"></td>\n");
      out.write("            </form>\n");
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
