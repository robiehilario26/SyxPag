/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility;

import com.DAO.DAO_Home;
import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import com.basher.model.BasherModel;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.IOUtils;

/**
 *
 * @author User
 */
@MultipartConfig(maxFileSize = 16177215)
@WebServlet(name = "FileUpload", urlPatterns = {"/FileUpload"})
public class FileUpload extends HttpServlet {

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
//    LOGGER.log(Level.INFO, "Part Header = {0}", partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //used to update the status of the file setting to active or inactive
        int id = Integer.parseInt(request.getParameter("id"));
        //   String assignid=
        String assignid = request.getParameter("global_record_no");
        String workorderid = request.getParameter("global_workorder_id");
        //get the session of the employee
        HttpSession session = request.getSession();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String article = request.getParameter("article");

        System.out.println("Testing the parameters passed if its correct");
        System.out.println(title);
        System.out.println(article);

        BasherModel studObj = new BasherModel();
        //String stud = 
        //studObj.setStudentNumber(Integer.parseInt(stud));

//        studObj.setStudentNumber(request.getParameter("stud"));
        InputStream inputStream = null; // input stream of the upload file
        System.out.println("Servlet");
        // obtains the upload file part in this multipart request

        Part filePart = request.getPart("files");
        final String fileName = getFileName(filePart);
        System.out.println("filename " + fileName);
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
//        String query = "UPDATE home SET picture =? WHERE id =6";
        String query = "INSERT INTO home(\n"
                + "            picture,title,article)\n"
                + "    VALUES ( ?,?,?);";
        try {
            ps = conn.prepareStatement(query);
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBlob(1, inputStream);
                ps.setString(2, title);
                ps.setString(3, article);
            }
//            ps.setString(2, studObj.getStudentNumber());

            int row = ps.executeUpdate();
            if (row > 0) {
                System.out.println("File uploaded and saved into database");
            }

        } catch (SQLException ex) {
            System.out.println(ex.toString());
//            Logger.getLogger(AddStudent.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
