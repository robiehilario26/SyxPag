/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility.services;

import com.DAO.DAO_Services;
import com.DAO.DAO_Team;
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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author User
 */
@MultipartConfig(maxFileSize = 120177222)
@WebServlet(name = "FileUpload_services", urlPatterns = {"/FileUpload_services"})
public class FileUpload_services extends HttpServlet {

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

        System.out.println("Testing the parameters passed if its correct for services");
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
        DAO_Services dao_services = new DAO_Services();
        if (action.equalsIgnoreCase("deleted")) {
            System.out.println("executed");

            bash.setId(update_id);
            dao_services.deleteTeam_by_id(update_id);

        } else {

//            InputStream inputStream = null; // input stream of the upload file
            System.out.println("Servlet");

            if (action.equalsIgnoreCase("add")) {
                System.out.println("insert execute");
                bash.setTitle(title);
                bash.setArticle(article);
//                bash.setFile_name(fileName);
//                bash.setPicture((Blob) inputStream);
                dao_services.add_Team(bash);

            } 
            else if (action.equalsIgnoreCase("update")) {
//
//               
//                    System.out.println("no image. image should remain the same");
                    bash.setArticle(article);
                    bash.setTitle(title);
                    dao_services.update_Team_by_id(bash, update_id);
//
                }

        }
    }
}
