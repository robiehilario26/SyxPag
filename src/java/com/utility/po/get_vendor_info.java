/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.utility.po;

import com.DAO.DAO_product_mainte;
import com.basher.model.SalesOrderModel;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "get_vendor_info", urlPatterns = {"/get_vendor_info"})
public class get_vendor_info extends HttpServlet {

    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       DAO_product_mainte location = new DAO_product_mainte();
//        String get_pk = "00012";
        String get_pk = request.getParameter("get_customer");
      
        DAO_product_mainte dao = new DAO_product_mainte();
        SalesOrderModel user = dao.get_personal_detail_vendor(get_pk);

        String json = null;
        GsonBuilder builder = new GsonBuilder();
        Gson gson = builder.create();
        json = json = new Gson().toJson(dao.get_personal_detail_vendor(get_pk));

        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

   

}
