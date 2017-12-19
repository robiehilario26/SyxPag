/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.SO;

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
@WebServlet(name = "get_so_arraylist", urlPatterns = {"/get_so_arraylist"})
public class get_so_arraylist extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String get_action = request.getParameter("get_action");
        String get_fk = request.getParameter("get_fk_id");
        String get_total_qty = request.getParameter("get_sum_qty");
        String get_total_prc = request.getParameter("get_sum_prc");
        String get_store = request.getParameter("get_store_name");

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

//        pk_arrays = get_pk.split(delimiter);

        /* given string will be split by the argument delimiter provided. */
        f_arrays = array_list_of_order.split(delimiter);
//        System.out.println("pk_arrays " + pk_arrays[0]);
        DAO_product_mainte joint_dao = new DAO_product_mainte();
        SalesOrderModel joint_item = new SalesOrderModel();

//        joint_item.setSo_customer(get_fk);
//        joint_item.setSo_store(get_store);
//        joint_dao.insert_joint_SO(joint_item);
        if (get_action.equalsIgnoreCase("add")) {
            joint_item.setSo_customer(get_fk);
            joint_item.setSo_store(get_store);
            joint_dao.insert_joint_SO(joint_item);
//            System.out.println("length " + f_arrays.length);
            for (int i = 0; i < f_arrays.length; i++) {
                DAO_product_mainte linedao = new DAO_product_mainte();
                SalesOrderModel item = new SalesOrderModel();

                s_arrays = f_arrays[i].split(delimiter_2);
                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
//                                        [0]             [1]                 [2]                 [3]                   [4]
//                                        fk              customername       type order         type payment            so status
//                item.setSo_pk(s_arrays[0]); // fk
                item.setSo_customer(s_arrays[1]);   // customer name
                item.setSo_order(s_arrays[2]);         // type order
                item.setSo_payment(s_arrays[3]);  // type payment

                item.setSo_status(s_arrays[4]);  // so status
                item.setSo_ar(s_arrays[5]);  // ar
                item.setSo_product_name(s_arrays[6]);  // product name
                item.setSo_price_per_item(s_arrays[10]);  // price per item original price before update
                item.setSo_per_qty_item(s_arrays[11]);  // per item total QTY
                item.setSo_per_prc_item(s_arrays[12]);  // per item total PRC
                item.setPr_id(s_arrays[13]);  // per item total PRC
                item.setSo_total_qty(get_total_qty);  // total QTY
                item.setSo_total_prc(get_total_prc);  //total PRC
                item.setSo_store(get_store);  //get store
                item.setSo_fk(get_fk);  //get store
                
                item.setSo_remarks(s_arrays[14]);
                linedao.insertSO_table(item);
            }
        } else if (get_action.equalsIgnoreCase("edit")) {

            for (int i = 0; i < f_arrays.length; i++) {
                DAO_product_mainte linedao = new DAO_product_mainte();
                SalesOrderModel item = new SalesOrderModel();
//
//                s_arrays = f_arrays[i].split(delimiter_2);
//                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
////                                        [0]             [1]                 [2]                 [3]                           [4]
////                                        fk              customername       productname         price                          pk
//                item.setPrice_fk_customer(s_arrays[0]);
//                item.setPrice_prod_name(s_arrays[2]);
//                item.setPrice_prc(s_arrays[3]);
//                item.setPrice_fk_product_id(s_arrays[4]);
//
//                linedao.updatePricing_table(item);

                s_arrays = f_arrays[i].split(delimiter_2);
                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
//                                        [0]             [1]                 [2]                 [3]                   [4]
//                                        fk              customername       type order         type payment            so status
                item.setSo_pk(s_arrays[0]); // fk
                item.setSo_customer(s_arrays[1]);   // customer name
                item.setSo_order(s_arrays[2]);         // type order
                item.setSo_payment(s_arrays[3]);  // type payment

                item.setSo_status(s_arrays[4]);  // so status
                item.setSo_ar(s_arrays[5]);  // ar
                item.setSo_product_name(s_arrays[6]);  // product name
                item.setSo_price_per_item(s_arrays[10]);  // price per item original price before update
                item.setSo_per_qty_item(s_arrays[11]);  // per item total QTY
                item.setSo_per_prc_item(s_arrays[12]);  // per item total PRC
                item.setSo_total_qty(get_total_qty);  // total QTY
                item.setSo_total_prc(get_total_prc);  //total PRC
                item.setSo_store(get_store);  //get store
                item.setSo_fk(get_fk);  //get store
                item.setSo_remarks(s_arrays[14]);
                
                System.out.println("edit s_arrays[14]" + s_arrays[14]);
                linedao.update_item_per_SO_customer(item);
            }

        } else if (get_action.equalsIgnoreCase("delete")) {
            DAO_product_mainte linedao = new DAO_product_mainte();
            SalesOrderModel item = new SalesOrderModel();
            item.setSo_pk(get_pk); // fk
            linedao.update_item_per_SO_customer_to_INACTIVE(item);
            System.out.println("delete detect" + get_pk);

        } else if (get_action.equalsIgnoreCase("update_final")) {
            DAO_product_mainte linedao = new DAO_product_mainte();
            SalesOrderModel item = new SalesOrderModel();
            item.setSo_fk(get_pk); // fk
//            linedao.update_so_item_Final(item);
            System.out.println("update final detect" + get_pk);
//            linedao.update_po_so_Final();
            for (int i = 0; i < f_arrays.length; i++) {
                s_arrays = f_arrays[i].split(delimiter_2);

                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2]);
//                                        [0]             [1]                 [2]                 [3]                   [4]
//                                        fk              customername       type order         type payment            so status
                item.setSo_pk(s_arrays[0]); // fk
                item.setSo_product_id(s_arrays[1]);   // customer name
                item.setSo_per_qty_item(s_arrays[2]);         // type order
                linedao.update_so_Final(item);
            }
            linedao.update_so_item_Final(item);

        }
        
        else if (get_action.equalsIgnoreCase("paid")) {
            DAO_product_mainte linedao = new DAO_product_mainte();
            SalesOrderModel item = new SalesOrderModel();
            item.setSo_pk(get_pk); // fk
            linedao.update_item_per_SO_customer_to_PAID(item);
            System.out.println("paid detect" + get_pk);

        }
    }

}
