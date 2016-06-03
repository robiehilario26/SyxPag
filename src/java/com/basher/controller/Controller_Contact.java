/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.controller;

import com.DAO.DAO_Contact_us;
import com.basher.model.BasherModel;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
//@WebServlet(name = "Controller_Contact", urlPatterns = {"/zadmin/Controller_Contact"})
public class Controller_Contact extends HttpServlet {

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

        String contactTitle = request.getParameter("contactTitle");
        String contacNo = request.getParameter("contacNo");
        String action = request.getParameter("action");
        String id = request.getParameter("id");

        DAO_Contact_us dao = new DAO_Contact_us();
        BasherModel bm = new BasherModel();

        bm.setTitle(contactTitle);
        bm.setContact_info(contacNo);

        if (action.equalsIgnoreCase("add")) {

            dao.insertContact(bm);

        } else if (action.equalsIgnoreCase("edit")) {

            bm.setIndicator(Integer.parseInt(id));

            dao.updateContact(bm);

            System.out.println("what is the cause of the error in heres");

        } else {

            //dao.deleteAbout(Integer.parseInt(id));
            dao.deleteContact(Integer.parseInt(id));

        }
    }

}
