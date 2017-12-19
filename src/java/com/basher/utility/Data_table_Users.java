/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility;

import com.DAO.DAO_Gallery;
import com.DAO.DAO_User;
import com.basher.model.BasherModel;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
//@WebServlet(name = "Data_table_Users", urlPatterns = {"/Data_table_Users"})
public class Data_table_Users extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<BasherModel> about = new ArrayList<>();
            DAO_User dao = new DAO_User();
            about = (ArrayList<BasherModel>) dao.getDetailsForUsers();
            Gson gson = new Gson();
            JsonElement element = gson.toJsonTree(about, new TypeToken<List<BasherModel>>() {
            }.getType());
            JsonArray jsonArray = element.getAsJsonArray();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print(jsonArray);
        } catch (Exception ex) {
            System.out.println(ex.toString());

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
