package org.apache.jsp.body;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class _005fabout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--main content start-->\r\n");
      out.write("<section id=\"main-content\">\r\n");
      out.write("    <section class=\"wrapper site-min-height\">\r\n");
      out.write("        <!-- page start-->\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("        <div aria-hidden=\"true\" aria-labelledby=\"myModalLabel\" role=\"dialog\" tabindex=\"-1\" id=\"myModal-1\" class=\"modal fade\">\r\n");
      out.write("            <div class=\"modal-dialog\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("                    <div class=\"modal-header\">\r\n");
      out.write("                        <button aria-hidden=\"true\" data-dismiss=\"modal\" class=\"close\" type=\"button\">×</button>\r\n");
      out.write("                        <h4 class=\"modal-title\">Create New</h4>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                        <form class=\"form-horizontal\" role=\"form\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label for=\"aboutTitle\" class=\"col-lg-2 col-sm-2 control-label\">Title</label>\r\n");
      out.write("                                <div class=\"col-lg-10\">\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"aboutTitle\" placeholder=\"Title\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label for=\"aboutArticle\" class=\"col-lg-2 col-sm-2 control-label\">Article</label>\r\n");
      out.write("                                <div class=\"col-lg-10\">\r\n");
      out.write("                                    <textarea type=\"text\" class=\"form-control\" id=\"aboutArticle\" placeholder=\"Article\" rows=\"4\"></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"modal-footer no-border\">\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-12\">\r\n");
      out.write("                <section class=\"panel\">\r\n");
      out.write("                    <header class=\"panel-heading\">\r\n");
      out.write("                       About\r\n");
      out.write("                    </header>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel-body\">\r\n");
      out.write("                        <div class=\"clearfix\">\r\n");
      out.write("                            <div class=\"btn-group\">\r\n");
      out.write("                                <button class=\"btn btn-primary\" data-target=\"#myModal-1\" data-toggle=\"modal\">\r\n");
      out.write("                                    Add New <i class=\"fa fa-plus\"></i>\r\n");
      out.write("                                </button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"space15\"></div>\r\n");
      out.write("                        <div class=\"adv-table\">\r\n");
      out.write("\r\n");
      out.write("                            <table  class=\"display table table-bordered table-striped\" id=\"example\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Record No</th>\r\n");
      out.write("                                        <th>Title</th>\r\n");
      out.write("                                        <th>Article</th>\r\n");
      out.write("                                        <th>Date Modified</th>\r\n");
      out.write("                                        <th style=\"width: 138px\">Action</th>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Trident</td>\r\n");
      out.write("                                        <td>Win 95+</td>\r\n");
      out.write("                                        <td>4</td>\r\n");
      out.write("                                        <td>X</td>\r\n");
      out.write("                                        <td>\r\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-info btn-sm\">Edit</button>\r\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-danger btn-sm\">Delete</button>\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Trident</td>\r\n");
      out.write("                                        <td>Win 95+</td>\r\n");
      out.write("                                        <td>4</td>\r\n");
      out.write("                                        <td>X</td>\r\n");
      out.write("                                        <td>\r\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-info btn-sm\">Edit</button>\r\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-danger btn-sm\">Delete</button>\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>Trident</td>\r\n");
      out.write("                                        <td>Win 95+</td>\r\n");
      out.write("                                        <td>4</td>\r\n");
      out.write("                                        <td>X</td>\r\n");
      out.write("                                        <td>\r\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-info btn-sm\">Edit</button>\r\n");
      out.write("                                            <button type=\"button\" class=\"btn btn-danger btn-sm\">Delete</button>\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </tbody>\r\n");
      out.write("                                <tfoot>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Record No</th>\r\n");
      out.write("                                        <th>Title</th>\r\n");
      out.write("                                        <th>Article</th>\r\n");
      out.write("                                        <th>Date Modified</th>\r\n");
      out.write("                                        <th>Action</th>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </tfoot>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- page end-->\r\n");
      out.write("    </section>\r\n");
      out.write("</section>\r\n");
      out.write("<!--main content end-->");
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
