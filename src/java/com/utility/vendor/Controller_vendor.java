/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.vendor;

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
@WebServlet(name = "Controller_vendor", urlPatterns = {"/Controller_vendor"})
public class Controller_vendor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String global_id = request.getParameter("get_global_id");
        String action = request.getParameter("get_action");
        String ven_name = request.getParameter("v_vendor_name");
        String ven_checkname = request.getParameter("v_chk_name");
        String ven_wrhs_location = request.getParameter("v_wrhs_location");
        String ven_office_add = request.getParameter("v_office_add");
        String ven_contact1 = request.getParameter("v_contct1");
        String ven_contact2 = request.getParameter("v_contct2");
        String ven_contact3 = request.getParameter("v_contct3");
        String ven_primary = request.getParameter("v_primary");
        String ven_secondary = request.getParameter("v_secondary");
        String ven_class = request.getParameter("v_class_");
        String ven_group = request.getParameter("v_grouping_");
        String ven_ap = request.getParameter("v_ap_");
        SalesOrderModel vendor = new SalesOrderModel();
        DAO_product_mainte dao_prod_mainte_vendor = new DAO_product_mainte();

        System.out.println(action);
        System.out.println(ven_name);
        System.out.println(ven_checkname);
        System.out.println(ven_wrhs_location);
        System.out.println(ven_office_add);
        System.out.println(ven_contact1);
        System.out.println(ven_contact2);
        System.out.println(ven_contact3);
        System.out.println(ven_primary);
        System.out.println(ven_secondary);
        System.out.println(ven_class);
        System.out.println(ven_group);
        System.out.println(ven_ap);

        vendor.setV_vendor_name(ven_name);
        vendor.setV_check_name(ven_checkname);
        vendor.setV_warehouse_loc(ven_wrhs_location);
        vendor.setV_office_add(ven_office_add);
        vendor.setV_contact1(ven_contact1);
        vendor.setV_contact2(ven_contact2);
        vendor.setV_contact3(ven_contact3);
        vendor.setV_primary_contact(ven_primary);
        vendor.setV_secondary_contact(ven_secondary);
        vendor.setV_class(ven_class);
        vendor.setV_grouping(ven_group);
        vendor.setV_ap(ven_ap);

//
//        so.setC_store(c_store);
//        so.setC_owner(c_owner);
//        so.setC_contact(c_contact);
//        so.setC_location(c_location);
//        so.setC_sub_location(c_sub_location);
//        so.setC_pricing_name(c_pricing_name);
//        so.setC_ar(c_ar);
//        so.setC_id(global_id);
        if (action.equalsIgnoreCase("add")) {
            System.out.println("insert");

            dao_prod_mainte_vendor.insertVendor(vendor);
        } else if (action.equalsIgnoreCase("delete")) {
            vendor.setV_pk_vendor(global_id);
            System.out.println("delete");
            dao_prod_mainte_vendor.update_vendor_to_inactive(vendor);
        } else if (action.equalsIgnoreCase("edit")) {
            vendor.setV_pk_vendor(global_id);
            System.out.println("update " + global_id);
            dao_prod_mainte_vendor.update_vendor(vendor);

        }

    }

}
