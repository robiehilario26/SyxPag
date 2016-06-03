/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.controller;

import com.DAO.DAO_Blog;
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
//@WebServlet(name = "Controller_Blog", urlPatterns = {"/zadmin/Controller_Blog"})
public class Controller_Blog extends HttpServlet {

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
        
        
        
        
        String blogTitle = request.getParameter("blogTitle");
        String blogLink = request.getParameter("blogLink");
        String blogArticle = request.getParameter("blogArticle");
        String action = request.getParameter("action");
        String id = request.getParameter("id");

        BasherModel bm = new BasherModel();
        DAO_Blog dao = new DAO_Blog();

        bm.setTitle(blogTitle);
        bm.setArticle(blogArticle);
        bm.setVideo_link(blogLink);

        if (action.equalsIgnoreCase("add")) {

            dao.insertBlog(bm);
        } else if (action.equalsIgnoreCase("edit")) {

            bm.setIndicator(Integer.parseInt(id));
            dao.updateBlog(bm);
        } else {

            dao.deleteBlog(Integer.parseInt(id));

        }

    }

}
