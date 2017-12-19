/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.report;

import com.DB.Util.ConnectionPool;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author User
 */
@WebServlet(name = "Inv_report", urlPatterns = {"/Inv_report"})
public class Inv_report extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String get_x = request.getParameter("check_transfer");
        String get_from = request.getParameter("from");
        String get_to = request.getParameter("to");

//        String get_from = "2017-08-26";
//        String get_to = "2017-09-26";
        System.out.println("asdasd " + get_x);
//       String realPath = getServletContext().getRealPath("/dist/img/");
        File filePath = new File(getServletContext().getRealPath("/jasperreport/report_Inventory.jrxml"));
        File savePath = new File(getServletContext().getRealPath("/jasperreport/report_Inventory.pdf"));

//        ArrayList<String> all_approvers = new ArrayList();
//
//        System.out.println("TESTTTTT " + get_x);
//        String[] validHosts = get_x.split(",");
////        ArrayList<String> all_approvers = new ArrayList();
//        for (int x = 0; x < validHosts.length; x++) {
//            System.out.println("concat [0] " + validHosts[x]);
//            all_approvers.add(validHosts[x]);
//        }
        generateReport(filePath, savePath);
        String path = savePath.toString();
        try {
            if (path != null) {
                response.setContentType("application/pdf");
                response.setHeader("content-dispostion", "attachment;");
                ServletContext ctx = getServletContext();
                InputStream is = ctx.getResourceAsStream("/jasperreport/report_Inventory.pdf");

                int read = 0;
                byte[] buffer = new byte[1024];

                OutputStream os = response.getOutputStream();
                while ((read = is.read(buffer)) != -1) {
                    os.write(buffer, 0, read);
                }
                os.flush();
                os.close();
            }
        } catch (IOException ex) {
            System.out.println(ex);
        }
    }

    public void generateReport(File filePath, File savePath) {
//        System.out.println("HAHAHA all_approvers " + all_approvers);

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        if (conn != null) {
            try {

                String sql = "Select tp.product_id,tp.inv_stock,tp.product_name,tp.brand,tp.group,tp.size,\n"
                        + "                (Select IFNULL(SUM(qty_per_item), 0)\n"
                        + "                FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = tp.product_id)\n"
                        + "                as so_not_F,\n"
                        + "                (Select IFNULL(SUM(qty_per_item), 0)\n"
                        + "                 FROM tbl_so WHERE so_status_final = 'final' AND so_fk_product = tp.product_id)\n"
                        + "                as so_F,\n"
                        + "                (Select IFNULL(SUM(po_qty_periItem), 0)\n"
                        + "                FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = tp.product_id)\n"
                        + "                as po_not_F,\n"
                        + "                (Select IFNULL(SUM(po_qty_periItem), 0)\n"
                        + "                FROM tbl_po WHERE po_status_final = 'final' AND po_fk_product_id = tp.product_id)\n"
                        + "                as po_F,\n"
                        + "                (Select tp.inv_stock  - IFNULL(SUM(qty_per_item), 0)\n"
                        + "                 FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = tp.product_id)\n"
                        + "                as `available`,\n"
                        + "                (Select tp.`inv_stock`  + IFNULL(SUM(po_qty_periItem), 0)\n"
                        + "                FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = tp.product_id)\n"
                        + "                as `future_po`,\n"
                        + "                (Select (tp.inv_stock + SUM(po_qty_periItem)) - so_F\n"
                        + "                FROM tbl_po WHERE po_status_final = 'final' AND po_fk_product_id = tp.product_id)\n"
                        + "                as `commited`\n"
                        + "                FROM `tbl_product_maintenance` tp";

                Map map = new HashMap();

//                map.put("p_so_id", all_approvers);
//                map.put("p_from", from);
//                map.put("p_to", to);
//                map.put("val", value);
//                map.put("imagepath", realPath);
                String pdfPath = savePath.toString();
                savePath.delete();
                JasperDesign design = JRXmlLoader.load(filePath);

                JRDesignQuery newQuery = new JRDesignQuery();
                newQuery.setText(sql);
                design.setQuery(newQuery);
                JasperReport report = JasperCompileManager.compileReport(design);
                JasperPrint print = JasperFillManager.fillReport(report, map, conn);
                JasperExportManager.exportReportToPdfFile(print, pdfPath);

                System.out.println(sql);

            } catch (JRException ex) {
                System.out.println(ex);
            } finally {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    System.out.println(ex);
                }

            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
