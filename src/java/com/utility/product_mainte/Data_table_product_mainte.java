/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.utility.product_mainte;

import com.DAO.DAO_product_mainte;
import com.basher.model.SalesOrderModel;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
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
//@WebServlet(name = "Data_table_product_mainte", urlPatterns = {"/zadmin/Data_table_product_mainte"})
public class Data_table_product_mainte extends HttpServlet {

    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
            ArrayList<SalesOrderModel> product = new ArrayList<>();
            DAO_product_mainte dao = new DAO_product_mainte();
            product = (ArrayList<SalesOrderModel>) dao.getDetailsproduct_maintenance();
            Gson gson = new Gson();
            JsonElement element = gson.toJsonTree(product, new TypeToken<List<SalesOrderModel>>() {
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
