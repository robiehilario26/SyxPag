/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.activity;

import com.DAO.DAO_Activity;
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
 * @author User
 */
@WebServlet(name = "data_table_activity", urlPatterns = {"/data_table_activity"})
public class data_table_activity extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        try {
            String offset = request.getParameter("offset_value");
            ArrayList<BasherModel> about = new ArrayList<>();
            DAO_Activity dao = new DAO_Activity();
            about = (ArrayList<BasherModel>) dao.getDetailsForActivity_with_offset(offset);
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
