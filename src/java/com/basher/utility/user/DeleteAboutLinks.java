/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility.user;

import com.DAO.DAO_About_links;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "DeleteAboutLinks", urlPatterns = {"/DeleteAboutLinks"})
public class DeleteAboutLinks extends HttpServlet {

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

        String update_id = request.getParameter("update_id");
        String action_taken = request.getParameter("action_taken");

        BasherModel bm = new BasherModel();
        DAO_About_links dal = new DAO_About_links();

        if (action_taken.equalsIgnoreCase("deleted")) {

            int id = Integer.parseInt(update_id);
            bm.setIndicator(id);
            dal.delete_About_links_by_id(id);

        }

    }

}
