/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.controller;

import com.DAO.DAO_product_mainte;
import com.basher.model.SalesOrderModel;
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
@WebServlet(name = "Controller_vendor_mainte", urlPatterns = {"/Controller_vendor_mainte"})
public class Controller_vendor_mainte extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        System.out.println("hey vendor copy paste success");
        
        
        String global_id = request.getParameter("get_global_id");
        String action = request.getParameter("get_action");
        String prod_name = request.getParameter("prod_name");
        String prod_size = request.getParameter("prod_size");
        String prod_brand = request.getParameter("prod_brand");
        String prod_group = request.getParameter("prod_group");
        String prod_allow_sale = request.getParameter("prod_allow_sale");
        String prod_tract_price = request.getParameter("prod_tract_price");

        SalesOrderModel so = new SalesOrderModel();
        DAO_product_mainte dao_prod_mainte = new DAO_product_mainte();

        so.setPr_name(prod_name);
        so.setPr_size(prod_size);
        so.setPr_brand(prod_brand);
        so.setPr_group(prod_group);
        so.setPr_allow(prod_allow_sale);
        so.setPr_tract(prod_tract_price);
        so.setPr_id(global_id);
//
        if (action.equalsIgnoreCase("add")) {
            System.out.println("insert");
//            dao_prod_mainte.insertAbout(so);
        } else if (action.equalsIgnoreCase("delete")) {
            System.out.println("delete");
//            dao_prod_mainte.delete_product(global_id);
        } else if (action.equalsIgnoreCase("edit")) {
            System.out.println("update");
//            dao_prod_mainte.update_product(so);
//            dao_prod_mainte.update_product_in_pricing_via_FK(so);
        }
    }

}
