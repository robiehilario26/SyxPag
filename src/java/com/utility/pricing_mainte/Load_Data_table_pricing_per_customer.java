/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.pricing_mainte;

import com.DAO.DAO_product_mainte;
import com.basher.model.SalesOrderModel;
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
@WebServlet(name = "Load_Data_table_pricing_per_customer", urlPatterns = {"/Load_Data_table_pricing_per_customer"})
public class Load_Data_table_pricing_per_customer extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String get_action = request.getParameter("get_action");
        String get_pk = request.getParameter("get_test");
        
        System.out.println("test "+ get_pk);
        try {
            ArrayList<SalesOrderModel> about = new ArrayList<>();
            DAO_product_mainte dao = new DAO_product_mainte();
            about = (ArrayList<SalesOrderModel>) dao.getDetailspricing_per_customer(get_pk);
            Gson gson = new Gson();
            JsonElement element = gson.toJsonTree(about, new TypeToken<List<SalesOrderModel>>() {
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
