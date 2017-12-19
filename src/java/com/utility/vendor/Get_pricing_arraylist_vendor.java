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
@WebServlet(name = "get_pricing_arraylist_1", urlPatterns = {"/get_pricing_arraylist_1"})
public class Get_pricing_arraylist_vendor extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("hey vendor copy paste success array list");
        String get_action = request.getParameter("get_action");
        String get_pk = request.getParameter("get_pk_id");
        System.out.println("get_action " + get_action);
        String array_list_of_order = request.getParameter("get_array_list");
        System.out.println("array_list_of_order " + array_list_of_order);
        System.out.println("get_pk " + get_pk);

        String[] pk_arrays;
        String[] f_arrays;
        String[] s_arrays;
        /* delimiter */
        String delimiter_pk = "/";
        String delimiter = ",";
        String delimiter_2 = "/";

        pk_arrays = get_pk.split(delimiter);

        /* given string will be split by the argument delimiter provided. */
        f_arrays = array_list_of_order.split(delimiter);
        System.out.println("pk_arrays " + pk_arrays[0]);
        DAO_product_mainte invoicedao = new DAO_product_mainte();
        DAO_product_mainte linedao = new DAO_product_mainte();

        if (get_action.equalsIgnoreCase("add")) {

            System.out.println("detect fk " + get_pk);
            String emp_level = linedao.search_if_existed_vendor(get_pk);
            if (emp_level.equalsIgnoreCase("")) {
                System.out.println("can add new " + emp_level);
                for (int i = 0; i < f_arrays.length; i++) {

                    SalesOrderModel item = new SalesOrderModel();

                    s_arrays = f_arrays[i].split(delimiter_2);
                    System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
//                                        [0]             [1]                 [2]                 [3]
//                                        fk              customername       productname         price
                    item.setPrice_fk_customer(s_arrays[0]);
                    item.setPrice_prod_name(s_arrays[2]);
                    item.setPrice_prc(s_arrays[3]);
                    item.setPrice_fk_product_id(s_arrays[4]);

                    String fk = s_arrays[0];

//                if (i == f_arrays.length - 1) {
//
//                }
                    linedao.insertPricing_table_vendor(item); // uncomment me later
                }
            } else {
                System.out.println("already exist fk " + emp_level);
            }

        } else if (get_action.equalsIgnoreCase("delete")) {
            linedao.delete_pricing_by_vendor(get_pk);
        } else {
            for (int i = 0; i < f_arrays.length; i++) {
//                DAO_product_mainte linedao = new DAO_product_mainte();
                SalesOrderModel item = new SalesOrderModel();

                s_arrays = f_arrays[i].split(delimiter_2);
                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
//                                        [0]             [1]                 [2]                 [3]                           [4]
//                                        fk              customername       productname         price                          pk
//                item.setPrice_fk_customer(s_arrays[0]);
//                item.setPrice_prod_name(s_arrays[2]);
                item.setPrice_prc(s_arrays[3]);
                item.setPrice_fk_product_id(s_arrays[4]);

                linedao.updatePricing_table_vendor(item); // uncomment me later
            }

        }
    }

}
