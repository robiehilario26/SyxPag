/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility;

import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "Picture_view", urlPatterns = {"/Picture_view"})
public class Picture_view extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//       String brandname= request.getParameter("id");
        int brandname = Integer.parseInt(request.getParameter("id"));
        String select_table = request.getParameter("set_table");

        try {
            ConnectionPool pool = ConnectionPool.getInstance();
            Connection conn = pool.getConnection();
            Blob image = null;
            ServletOutputStream out = response.getOutputStream();

            PreparedStatement preparedStatement = null;
            try {
                preparedStatement = conn.
                        prepareStatement("select picture from " + select_table + " where id = ? ");
//                preparedStatement.setString(1, brandname);
                preparedStatement.setInt(1, brandname);
            } catch (SQLException ex) {
//                 Logger.getLogger(ProductView.class.getName()).log(Level.SEVERE, null, ex);
            }

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {

                image = rs.getBlob(1);

                response.setContentType("image/gif");
                InputStream in = image.getBinaryStream();
                int length = (int) image.length();
                int bufferSize = 1024;
                byte[] buffer = new byte[bufferSize];
                while ((length = in.read(buffer)) != -1) {
                    out.write(buffer, 0, length);

                }
                in.close();
                out.flush();

                DBUtil.closeResultSet(rs);
                DBUtil.closeStatement(preparedStatement);
                pool.freeConnection(conn);

            } else {
                response.setContentType("text/html");
                out.println("<html><head><title>Display Blob Example</title></head>");
                out.println("<body><h4><font color='red'>image not found for given id</font></h4></body></html>");
                return;

            }
        } catch (SQLException ex) {
//            Logger.getLogger(ProductView.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
