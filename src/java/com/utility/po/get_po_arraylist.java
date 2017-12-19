/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utility.po;

import com.DAO.DAO_product_mainte;
import com.basher.model.SalesOrderModel;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
@WebServlet(name = "get_po_arraylist", urlPatterns = {"/get_po_arraylist"})
public class get_po_arraylist extends HttpServlet {

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
        String get_cperson = request.getParameter("get_c_personName");
        String get_other_discount = request.getParameter("get_o_discount");
        String get_total_discount = request.getParameter("get_t_discount");

        String get_pk = request.getParameter("get_pk_id");

        System.out.println("get_action " + get_action);
        String array_list_of_order = request.getParameter("get_array_list");
        System.out.println("array_list_of_order " + array_list_of_order);
        System.out.println("get_pk " + get_pk);

        System.out.println("get_total_qty " + get_total_qty);
        System.out.println("get_total_prc " + get_total_prc);
        System.out.println("get_cperson " + get_cperson);

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
        DAO_product_mainte linedao = new DAO_product_mainte();
        SalesOrderModel item = new SalesOrderModel();
        if (get_action.equalsIgnoreCase("add")) {
            joint_item.setPo_fk(get_fk); //uncommetn later
            joint_item.setPo_vendor(get_pk);//uncommetn later
            joint_dao.insert_joint_PO(joint_item);
//            System.out.println("length " + f_arrays.length);
            for (int i = 0; i < f_arrays.length; i++) {

                s_arrays = f_arrays[i].split(delimiter_2);

//                System.out.println("id      vendorname      typeOrder   Payment Date    cPerson prodID  instock available   afterPO price   QTY totalPrc    D_amount    D_percent   A_discount");
                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4] + " / " + s_arrays[5] + " / " + s_arrays[6] + " / " + s_arrays[7]
                        + " / " + s_arrays[8] + " / " + s_arrays[9] + " / " + s_arrays[10] + " / " + s_arrays[11] + " / " + s_arrays[12] + " / " + s_arrays[13] + " / " + s_arrays[14] + " / " + s_arrays[15]);
//                                        [0]             [1]                 [2]                 [3]                   [4]
//                                        fk              customername       type order         type payment            so status
                item.setPo_product_id(s_arrays[0]); // fk
                item.setPo_vendor(s_arrays[1]);   // customer name
                item.setPo_order(s_arrays[2]);         // type order
                item.setPo_payment(s_arrays[3]);  // type payment
                item.setPo_delivery(s_arrays[4]);  // date delivery
                item.setPo_primary(s_arrays[5]);  // primay contact name
                item.setPo_product_name(s_arrays[6]);  // product name
                item.setPo_instock(s_arrays[7]);  // po instock
                item.setPo_available(s_arrays[8]);  // po available
                item.setPo_after(s_arrays[9]);  //after po
                item.setPo_price_per_item(s_arrays[10]);  // price
                item.setPo_per_qty_item(s_arrays[11]);  // qty

                item.setPo_total_prc_perItem(s_arrays[12]);  // per price amount total 
                item.setPo_D_amount(s_arrays[13]);  // per discount amount total 
                item.setPo_D_percent(s_arrays[14]);  // per discount percent total
                item.setPo_A_discount(s_arrays[15]);  // per after discount after total

                item.setPr_id(s_arrays[16]);  // per after discount after total

                item.setPo_total_qty(get_total_qty);  // total QTY
                item.setPo_total_prc(get_total_prc);  //total PRC
                item.setPo_total_discount(get_total_discount);  //total PRC
                item.setPo_other_discount(get_other_discount);  //total PRC
                item.setPo_fk(get_fk);  //get fk vendor id
                linedao.insertPO_table(item);

            }
        } else if (get_action.equalsIgnoreCase("edit")) {

            for (int i = 0; i < f_arrays.length; i++) {
//                DAO_product_mainte linedao = new DAO_product_mainte();
//                SalesOrderModel item = new SalesOrderModel();
//
//                s_arrays = f_arrays[i].split(delimiter_2);
//                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
////                                        [0]             [1]                 [2]                 [3]                           [4]
////                                        fk              customername       productname         price                          pk

                s_arrays = f_arrays[i].split(delimiter_2);
//                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4]);
////                                        [0]             [1]                 [2]                 [3]                   [4]
////                                        fk              customername       type order         type payment            so status
//                item.setSo_pk(s_arrays[0]); // fk
//                item.setSo_customer(s_arrays[1]);   // customer name
//                item.setSo_order(s_arrays[2]);         // type order
//                item.setSo_payment(s_arrays[3]);  // type payment
//
//                item.setSo_status(s_arrays[4]);  // so status
//                item.setSo_ar(s_arrays[5]);  // ar
                item.setSo_product_name(s_arrays[6]);  // product name
//                item.setSo_price_per_item(s_arrays[10]);  // price per item original price before update
//                item.setSo_per_qty_item(s_arrays[11]);  // per item total QTY
//                item.setSo_per_prc_item(s_arrays[12]);  // per item total PRC
//
//                item.setSo_per_prc_item(s_arrays[13]);  // per discount amount total 
//                item.setSo_per_prc_item(s_arrays[14]);  // per discount percent total
//                item.setSo_per_prc_item(s_arrays[15]);  // per after discount after total
//
//                item.setSo_total_qty(get_total_qty);  // total QTY
//                item.setSo_total_prc(get_total_prc);  //total PRC
////                item.setSo_store(get_store);  //get store
//                item.setSo_fk(get_fk);  //get store

                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2] + " / " + s_arrays[3] + " / " + s_arrays[4] + " / " + s_arrays[5] + " / " + s_arrays[6] + " / " + s_arrays[7]
                        + " / " + s_arrays[8] + " / " + s_arrays[9] + " / " + s_arrays[10] + " / " + s_arrays[11] + " / " + s_arrays[12] + " / " + s_arrays[13] + " / " + s_arrays[14] + " / " + s_arrays[15]);
//                                        [0]             [1]                 [2]                 [3]                   [4]
//                                        fk              customername       type order         type payment            so status
                item.setPo_product_id(s_arrays[0]); // fk
                item.setPo_vendor(s_arrays[1]);   // customer name
                item.setPo_order(s_arrays[2]);         // type order
                item.setPo_payment(s_arrays[3]);  // type payment
                item.setPo_delivery(s_arrays[4]);  // date delivery
                item.setPo_primary(s_arrays[5]);  // primay contact name
                item.setPo_product_name(s_arrays[6]);  // product name
                item.setPo_instock(s_arrays[7]);  // po instock
                item.setPo_available(s_arrays[8]);  // po available
                item.setPo_after(s_arrays[9]);  //after po
                item.setPo_price_per_item(s_arrays[10]);  // price
                item.setPo_per_qty_item(s_arrays[11]);  // qty

                item.setPo_total_prc_perItem(s_arrays[12]);  // per price amount total 
                item.setPo_D_amount(s_arrays[13]);  // per discount amount total 
                item.setPo_D_percent(s_arrays[14]);  // per discount percent total
                item.setPo_A_discount(s_arrays[15]);  // per after discount after total

                item.setPo_total_qty(get_total_qty);  // total QTY
                item.setPo_total_prc(get_total_prc);  //total PRC
                item.setPo_total_discount(get_total_discount);  //total PRC
                item.setPo_other_discount(get_other_discount);  //total PRC
                item.setPo_fk(get_fk);  //get fk vendor id

                linedao.update_item_per_PO_vendor(item);
            }

        } else if (get_action.equalsIgnoreCase("delete")) {
//            DAO_product_mainte linedao = new DAO_product_mainte();
//            SalesOrderModel item = new SalesOrderModel();
            item.setSo_pk(get_pk); // fk
            linedao.update_item_per_SO_customer_to_INACTIVE(item);
            System.out.println("delete detect" + get_pk);

        } else if (get_action.equalsIgnoreCase("update_final")) {
            item.setPo_id(get_pk); // fk

            for (int i = 0; i < f_arrays.length; i++) {
                s_arrays = f_arrays[i].split(delimiter_2);

                System.out.println(s_arrays[0] + " / " + s_arrays[1] + " / " + s_arrays[2]);
//                                        [0]             [1]                 [2]                 [3]                   [4]
//                                        fk              customername       type order         type payment            so status
                item.setPo_pk(s_arrays[0]); // fk
                item.setPo_product_id(s_arrays[1]);   // customer name
                item.setPo_per_qty_item(s_arrays[2]);         // type order
                linedao.update_po_so_Final(item);
            }
            linedao.update_po_item_Final(item);
//      
//            
        }

    }
}
