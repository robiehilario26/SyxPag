/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.controller;

import com.DAO.DAO_About_links;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
@MultipartConfig(maxFileSize = 120177222)
//@WebServlet(name = "Controller_About_Link", urlPatterns = {"/zadmin/Controller_About_Link"})
public class Controller_About_Link extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("aboutTitle");
        String link = request.getParameter("aboutLink");
        String update_id = request.getParameter("update_id");
        String action_taken = request.getParameter("action_taken");

        System.out.println(title);
        System.out.println(link);

        BasherModel bm = new BasherModel();
        DAO_About_links dal = new DAO_About_links();

        bm.setTitle(title);
        bm.setLink(link);
        Part filePart = request.getPart("inputFile");

        if (action_taken.equalsIgnoreCase("add")) {

            dal.add_About_links(bm, filePart);

        } else if (action_taken.equalsIgnoreCase("update") && filePart == null) {
            int id = Integer.parseInt(update_id);
            bm.setIndicator(id);
            
            dal.update_About_links(bm, filePart);
            

        } else if (action_taken.equalsIgnoreCase("update") && filePart != null) {
            int id = Integer.parseInt(update_id);
            bm.setIndicator(id);
            dal.update_About_links_2(bm);
            

        }

    }

}
