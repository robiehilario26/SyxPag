/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility.user;

import com.DAO.DAO_User;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author user
 */
@MultipartConfig(maxFileSize = 120177222)
//@WebServlet(name = "UserAdmin", urlPatterns = {"/UserAdmin"})
public class UserAdmin extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get all the parameters in here
        String username = request.getParameter("userName");
        String password = request.getParameter("userPass");
        String lname = request.getParameter("userLname");
        String fname = request.getParameter("userFname");
        String gender = request.getParameter("gender");
        String action_taken = request.getParameter("action_taken");

        String update_id = request.getParameter("update_id");

        System.out.println(username);
        System.out.println(password);
        System.out.println(lname);
        System.out.println(fname);
        System.out.println(gender);
        System.out.println(action_taken);
        System.out.println(update_id);

        InputStream inputStream = null; // input stream of the upload file
        DAO_User dao = new DAO_User();
        BasherModel bm = new BasherModel();
        bm.setUsername(username);
        bm.setPassword(password);
        bm.setLname(lname);
        bm.setFname(fname);
        bm.setGender(gender);

        System.out.println("Servlet");
        // obtains the upload file part in this multipart request

        Part filePart = request.getPart("homeImage");

        if (action_taken.equalsIgnoreCase("add")) {
            dao.add_User(bm, filePart);
        } else if (action_taken.equalsIgnoreCase("update") && filePart == null) {
            int id = Integer.parseInt(update_id);
            bm.setIndicator(id);
            dao.update_User_v_2(bm);
        } else if (action_taken.equalsIgnoreCase("update") && filePart != null) {
            int id = Integer.parseInt(update_id);
            bm.setIndicator(id);
            dao.update_User(bm, filePart);
        } else if (action_taken.equalsIgnoreCase("deleted")) {

            int id = Integer.parseInt(update_id);
            bm.setIndicator(id);
            dao.deleteUser_by_id(id);

        }

    }

}
