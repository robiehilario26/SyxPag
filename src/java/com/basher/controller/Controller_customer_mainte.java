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
@WebServlet(name = "Controller_customer_mainte", urlPatterns = {"/zadmin/Controller_customer_mainte"})
public class Controller_customer_mainte extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String global_id = request.getParameter("get_global_id");
        String action = request.getParameter("get_action");
        String c_store = request.getParameter("c_store");
        String c_owner = request.getParameter("c_owner");
        String c_contact = request.getParameter("c_contact");
        String c_location = request.getParameter("c_location");
        String c_sub_location = request.getParameter("c_sub_location");
        String c_pricing_name = request.getParameter("c_pricing_name");
        String c_ar = request.getParameter("c_ar");
        SalesOrderModel so = new SalesOrderModel();
        DAO_product_mainte dao_prod_mainte = new DAO_product_mainte();
//
        so.setC_store(c_store);
        so.setC_owner(c_owner);
        so.setC_contact(c_contact);
        so.setC_location(c_location);
        so.setC_sub_location(c_sub_location);
        so.setC_pricing_name(c_pricing_name);
        so.setC_ar(c_ar);
        so.setC_id(global_id);
        if (action.equalsIgnoreCase("add")) {
            System.out.println("insert");
            dao_prod_mainte.insertCustomer(so);
        }
        else if (action.equalsIgnoreCase("delete")) {
            System.out.println("delete");
            dao_prod_mainte.delete_customer(global_id);
        } 
        else if (action.equalsIgnoreCase("edit")) {
            System.out.println("update");
            dao_prod_mainte.update_customer(so);
//            dao_prod_mainte.update_product_in_pricing_via_FK(so);
        }
//        System.out.println("global id " + global_id);
//        System.out.println(action);
//        System.out.println(c_store);
//        System.out.println(c_owner);
//        System.out.println(c_contact);
//        System.out.println(c_location);
//        System.out.println(c_sub_location);
//        System.out.println(c_pricing_name);
//        System.out.println(c_ar);
    }

}
