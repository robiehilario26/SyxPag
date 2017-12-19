/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.controller;

import com.DAO.DAO_Acknowledgement;
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
//@WebServlet(name = "Controller_Acknowledgement", urlPatterns = {"/zadmin/Controller_Acknowledgement"})
public class Controller_Acknowledgement extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String article = request.getParameter("article");
        String action = request.getParameter("action");
        String id = request.getParameter("id");

        DAO_Acknowledgement dao_about = new DAO_Acknowledgement();
        BasherModel bm = new BasherModel();

        bm.setTitle(title);
        bm.setArticle(article);
        if (action.equalsIgnoreCase("add")) {
            dao_about.insertAcknow(bm);

        } else if (action.equalsIgnoreCase("edit")) {

            bm.setIndicator(Integer.parseInt(id));
            dao_about.updateAcknow(bm);

        } else {

            dao_about.deleteAcknow(Integer.parseInt(id));

        }

    }

}
