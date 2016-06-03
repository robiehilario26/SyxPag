/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility.gallery;

import com.DAO.DAO_Gallery;
import com.DB.Util.ConnectionPool;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author User
 */
@MultipartConfig(maxFileSize = 120177222)
//@WebServlet(name = "FileUpload_gallery", urlPatterns = {"/FileUpload_gallery"})
public class FileUpload_gallery extends HttpServlet {

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
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String action = request.getParameter("action_taken");
        String title = request.getParameter("title");
        String article = request.getParameter("article");
        String update_id = request.getParameter("update_id");

        System.out.println("Testing the parameters passed if its correct for Gallery");
        System.out.println(update_id);
        System.out.println(action);
        System.out.println(title);
        System.out.println(article);

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "";
        BasherModel bash = new BasherModel();
        DAO_Gallery dao_home = new DAO_Gallery();
        if (action.equalsIgnoreCase("deleted")) {
            System.out.println("executed");

            bash.setId(update_id);
            dao_home.deleteGallery_by_id(update_id);

        } else {

            InputStream inputStream = null; // input stream of the upload file
            System.out.println("Servlet");
            // obtains the upload file part in this multipart request

            Part filePart = request.getPart("files");
            final String fileName = getFileName(filePart);

            if (action.equalsIgnoreCase("add")) {
                System.out.println("insert execute");
                bash.setTitle(title);
                bash.setArticle(article);
                bash.setFile_name(fileName);
                bash.setPicture((Blob) inputStream);
                dao_home.add_Gallery(bash, filePart);

            } else if (action.equalsIgnoreCase("update")) {

                if (filePart.getSize() == 0) {
                    System.out.println("no image. image should remain the same");
                    bash.setArticle(article);
                    bash.setTitle(title);
                    dao_home.update_Gallery_by_id(bash, update_id);

                } else {
                    System.out.println("new image set.");
                    bash.setTitle(title);
                    bash.setArticle(article);
                    bash.setFile_name(fileName);
                    bash.setPicture((Blob) inputStream);
                    dao_home.update_Gallery_by_id_with_picture(bash, update_id, filePart);
                }

            }
        }
    }

   

}
