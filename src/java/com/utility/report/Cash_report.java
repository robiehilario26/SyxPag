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
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
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
@WebServlet(name = "Cash_report", urlPatterns = {"/Cash_report"})
public class Cash_report extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String get_from = request.getParameter("reportrange1_cash");
        String get_to = request.getParameter("reportrange2_cash");

        File filePath = new File(getServletContext().getRealPath("/jasperreport/Report_cash_paid.jrxml"));
        File savePath = new File(getServletContext().getRealPath("/jasperreport/Report_cash_paid.pdf"));

        generateReport(filePath, savePath, get_from, get_to);
        String path = savePath.toString();
        try {
            if (path != null) {
                response.setContentType("application/pdf");
                response.setHeader("content-dispostion", "attachment;");
                ServletContext ctx = getServletContext();
                InputStream is = ctx.getResourceAsStream("/jasperreport/Report_cash_paid.pdf");

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    public void generateReport(File filePath, File savePath, String from, String to) {
//        System.out.println("HAHAHA all_approvers " + all_approvers);

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        if (conn != null) {
            try {

                String sql = "SELECT  CAST(so_id as char(50)), CAST(fk as char(50)), customer_name, store_name, "
                        + "prod_name, type_payment, current_ar, `total_price`,`so_remarks`, time_stamp "
                        + "FROM tbl_so\n"
                        + "WHERE type_payment = 'Cash' and date(time_stamp) >=  $P{p_from} AND date(time_stamp) <= $P{p_to} "
                        + "and so_status_final = 'final'\n"
                        + "group by so_id";

                Map map = new HashMap();

//                map.put("p_so_id", all_approvers);
                map.put("p_from", from);
                map.put("p_to", to);
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

}
