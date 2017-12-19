/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.AR;

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
@WebServlet(name = "AR_report", urlPatterns = {"/AR_report"})
public class AR_report extends HttpServlet {

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
        File filePath = new File(getServletContext().getRealPath("/jasperreport/Report_ar.jrxml"));
        File savePath = new File(getServletContext().getRealPath("/jasperreport/Report_ar.pdf"));

        ArrayList<String> all_approvers = new ArrayList();

        System.out.println("TESTTTTT " + get_x);
        String[] validHosts = get_x.split(",");
//        ArrayList<String> all_approvers = new ArrayList();
        for (int x = 0; x < validHosts.length; x++) {
            System.out.println("concat [0] " + validHosts[x]);
            all_approvers.add(validHosts[x]);
        }

        generateReport(filePath, savePath, all_approvers, get_from, get_to);
        String path = savePath.toString();
        try {
            if (path != null) {
                response.setContentType("application/pdf");
                response.setHeader("content-dispostion", "attachment;");
                ServletContext ctx = getServletContext();
                InputStream is = ctx.getResourceAsStream("/jasperreport/Report_ar.pdf");

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

    public void generateReport(File filePath, File savePath, List<String> all_approvers, String from, String to) {
        System.out.println("HAHAHA all_approvers " + all_approvers);

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        if (conn != null) {
            try {

//                String sql = "SELECT a.so_id,DATE_FORMAT(a.time_stamp,'%m/%d/%Y') as date_f,a.total_price,a.total_qty, DATE_FORMAT(b.time_stamp,'%m/%d/%Y') as date_c,a.store_name, a.customer_name FROM `tbl_so` a\n"
//                        + "inner join tbl_joint_so b on\n"
//                        + "b.pk_joint_so = a.so_id\n"
//                        + "where $X{IN, a.so_id, p_so_id}\n"
//                        + "group by so_id asc";
//                String sql = "SELECT a.so_id,DATE_FORMAT(a.time_stamp,'%m/%d/%Y') as date_f,a.total_price,a.total_qty, DATE_FORMAT(b.time_stamp,'%m/%d/%Y') as date_c,a.store_name, a.customer_name,\n"
//                        + "(SELECT  SUM(distinct c.total_price)\n"
//                        + "FROM tbl_so c\n"
//                        + "inner join tbl_joint_so b on\n"
//                        + "b.pk_joint_so = c.so_id\n"
//                        + "WHERE c.pk <= a.pk AND c.so_status_final ='final' AND date(c.time_stamp) >= $P{p_from} AND date(c.time_stamp) <= $P{p_to})\n"
//                        + "as running, (Select ar from tbl_customer_maintenance where pk= a.fk) as ar_,\n"
//                        + "(SELECT  SUM(distinct d.total_price) + ar_\n"
//                        + "FROM tbl_so d\n"
//                        + "WHERE d.so_status_final ='final' AND date(d.time_stamp) >= $P{p_from} AND date(d.time_stamp) <= $P{p_to})\n"
//                        + "as running_total, a.so_remarks FROM `tbl_so` a\n"
//                        + "inner join tbl_joint_so b on\n"
//                        + "b.pk_joint_so = a.so_id\n"
//                        + "where $X{IN, a.so_id, p_so_id}\n"
//                        + "group by so_id asc";
                String sql = "SELECT a.so_id,DATE_FORMAT(a.time_stamp,'%m/%d/%Y') as date_f,a.total_price,a.total_qty, DATE_FORMAT(b.time_stamp,'%m/%d/%Y') as date_c,a.store_name, a.customer_name,\n"
                        + "(SELECT  SUM(distinct c.total_price)\n"
                        + "FROM tbl_so c\n"
                        + "inner join tbl_joint_so b on\n"
                        + "b.pk_joint_so = c.so_id\n"
                        + "WHERE $X{IN, c.so_id, p_so_id} AND c.pk <= a.pk AND c.so_status_final ='final' AND date(c.time_stamp) >= $P{p_from} AND date(c.time_stamp) <= $P{p_to})\n"
                        + "as running, (Select ar from tbl_customer_maintenance where pk= a.fk) as ar_,\n"
                        + "(SELECT  SUM(distinct d.total_price) + ar_\n"
                        + "FROM tbl_so d\n"
                        + "WHERE $X{IN, d.so_id, p_so_id} and d.so_status_final ='final')\n"
                        + "as running_total, a.so_remarks FROM `tbl_so` a\n"
                        + "inner join tbl_joint_so b on\n"
                        + "b.pk_joint_so = a.so_id\n"
                        + "where $X{IN, a.so_id, p_so_id}\n"
                        + "group by so_id asc";

                Map map = new HashMap();

                map.put("p_so_id", all_approvers);
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

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
