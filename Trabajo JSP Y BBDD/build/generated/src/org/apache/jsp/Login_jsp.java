package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"text-align: center; margin: 5% 0%;\">\n");
      out.write("            <img src=\"imagenes/letras.png\" style=\"width: 935px; height: 85px;\">\n");
      out.write("        </div>\n");
      out.write("        ");

        //Crea el diccionario
        HashMap <String, String> acceso = new HashMap <String, String>();
        acceso.put("admin", "admin");
        acceso.put("usuario", "usuario");
        
        String usuario = request.getParameter("Usuario");
        String contraseña = request.getParameter("Contrasena");
        
        if(acceso.containsKey(usuario) == true){
            if(acceso.get(usuario).equals(contraseña)){
               
      out.write("\n");
      out.write("                <div style=\"text-align: center;  \">\n");
      out.write("                    <h4>Accediendo</h4>\n");
      out.write("                </div>\n");
      out.write("                <form method=\"get\" action=\"Acceso.jsp\"class=\"col s12\">\n");
      out.write("                    <input type=\"hidden\" name=\"Usuario\"/>\n");
      out.write("                    <input type=\"hidden\" name=\"Contrasena\"/>\n");
      out.write("                    <META HTTP-EQUIV=\"REFRESH\" CONTENT=\"2;URL=Acceso.jsp\">\n");
      out.write("                </form>\n");
      out.write("                <div style=\"text-align: center;\">\n");
      out.write("                    <div class=\"preloader-wrapper big active\">\n");
      out.write("                        <div class=\"spinner-layer spinner-blue-only\">\n");
      out.write("                          <div class=\"circle-clipper left\">\n");
      out.write("                            <div class=\"circle\"></div>\n");
      out.write("                          </div><div class=\"gap-patch\">\n");
      out.write("                            <div class=\"circle\"></div>\n");
      out.write("                          </div><div class=\"circle-clipper right\">\n");
      out.write("                            <div class=\"circle\"></div>\n");
      out.write("                          </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");

            } else {
              
      out.write("\n");
      out.write("                <form method=\"get\" action=\"Login.jsp\" class=\"col s12\">\n");
      out.write("                    <div id=\"anadir\" class=\"row\">\n");
      out.write("                        <h4 style=\"text-align: center; padding-top: 3%; color:black; font-weight: bold;\">Iniciar Sesion</h4>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"input-field col s12\">\n");
      out.write("                                <i class=\"material-icons prefix left\">account_circle</i>\n");
      out.write("                                <input type=\"text\" placeholder=\"usuario\" name=\"Usuario\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12\">\n");
      out.write("                                <i class=\"material-icons prefix left\">vpn_key</i>\n");
      out.write("                                <input type=\"text\" placeholder=\"contraseña\" name=\"Contrasena\" />\n");
      out.write("                            </div>\n");
      out.write("                            <p style=\"text-align: center; color: black;\">Contraseña Incorrecta</p>\n");
      out.write("                            <div style=\"text-align: center;\">\n");
      out.write("                                <button type=\"submit\"  class=\"waves-effect waves-light btn blue\"><i class=\"material-icons left\">lock_open</i>Iniciar</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("              ");

            }
        }else{
                
      out.write("\n");
      out.write("                <form method=\"get\" action=\"Login.jsp\" class=\"col s12\">\n");
      out.write("                    <div id=\"anadir\" class=\"row\">\n");
      out.write("                        <h4 style=\"text-align: center; padding-top: 3%; color:black; font-weight: bold;\">Iniciar Sesion</h4>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"input-field col s12\">\n");
      out.write("                                <i class=\"material-icons prefix left\">account_circle</i>\n");
      out.write("                                <input type=\"text\" placeholder=\"usuario\" name=\"Usuario\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12\">\n");
      out.write("                                <i class=\"material-icons prefix left\">vpn_key</i>\n");
      out.write("                                <input type=\"text\" placeholder=\"contraseña\" name=\"Contrasena\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div style=\"text-align: center;\">\n");
      out.write("                                <button type=\"submit\"  class=\"waves-effect waves-light btn blue\"><i class=\"material-icons left\">lock_open</i>Iniciar</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("       ");

        }
        
      out.write("\n");
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
