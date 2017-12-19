/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.model;

import java.sql.Timestamp;

/**
 *
 * @author User
 */
public class SalesOrderModel {

    private String pr_id;
    private String pr_name;
    private String pr_size;
    private String pr_brand;
    private String pr_group;
    private String pr_allow;
    private String pr_tract;
    private String pr_inventory;

    private String c_id;
    private String c_store;
    private String c_owner;
    private String c_contact;
    private String c_location;
    private String c_sub_location;
    private String c_pricing_name;
    private String c_ar;

    private String price_id;
    private String price_fk_customer;
    private String price_fk_product_id;
    private String price_prc;
    private String price_prod_name;
    private String price_prod_id;

    private String so_pk;
    private String so_fk;
    private String so_customer;
    private String so_store;
    private String so_order;
    private String so_payment;
    private String so_status;
    private String so_ar;
    private String so_location;
    private String so_total_qty;
    private String so_total_prc;
    private String so_per_qty_item;
    private String so_per_prc_item;
    private String so_product_name;
    private String so_price_per_item;
    private String so_final_status;
    private String so_product_id;
    private String so_remarks;
    
    
    
    private Timestamp time_stamp;
    private Timestamp Created_timestamp;
    private String v_pk_vendor;
    private String v_vendor_name;
    private String v_check_name;
    private String v_warehouse_loc;
    private String v_office_add;
    private String v_contact1;
    private String v_contact2;
    private String v_contact3;
    private String v_primary_contact;
    private String v_secondary_contact;
    private String v_class;
    private String v_grouping;
    private String v_ap;

    private String po_id;
    private String po_primary;
    private String po_contact1;
    private String po_pk;
    private String po_fk;
    private String po_vendor;
    private String po_order;
    private String po_payment;
    private String po_status;
    private String po_total_qty;
    private String po_total_prc;
    private String po_total_prc_perItem;
    private String po_per_qty_item;
    private String po_per_prc_item;
    private String po_product_name;
    private String po_price_per_item;
    private String po_delivery;
    private String po_other_discount;
    private String po_total_discount;
    private String po_A_discount;
    private String po_D_amount;
    private String po_D_percent;
    private String po_available;
    private String po_instock;
    private String po_product_id;
    private String po_after;
    private String po_final_status;

    private String inv_pr_id;
    private String inv_stock;
    private String inv_pr_name;
    private String inv_so_not_F;
    private String inv_so_F;
    private String inv_po_not_F;
    private String inv_po_F;
    private String inv_available;
    private String inv_future_po;
    private String inv_commited;

    private String date_created;
    private String date_final;

    /**
     * @return the pr_id
     */
    public String getPr_id() {
        return pr_id;
    }

    /**
     * @param pr_id the pr_id to set
     */
    public void setPr_id(String pr_id) {
        this.pr_id = pr_id;
    }

    /**
     * @return the pr_name
     */
    public String getPr_name() {
        return pr_name;
    }

    /**
     * @param pr_name the pr_name to set
     */
    public void setPr_name(String pr_name) {
        this.pr_name = pr_name;
    }

    /**
     * @return the pr_size
     */
    public String getPr_size() {
        return pr_size;
    }

    /**
     * @param pr_size the pr_size to set
     */
    public void setPr_size(String pr_size) {
        this.pr_size = pr_size;
    }

    /**
     * @return the pr_brand
     */
    public String getPr_brand() {
        return pr_brand;
    }

    /**
     * @param pr_brand the pr_brand to set
     */
    public void setPr_brand(String pr_brand) {
        this.pr_brand = pr_brand;
    }

    /**
     * @return the pr_group
     */
    public String getPr_group() {
        return pr_group;
    }

    /**
     * @param pr_group the pr_group to set
     */
    public void setPr_group(String pr_group) {
        this.pr_group = pr_group;
    }

    /**
     * @return the pr_allow
     */
    public String getPr_allow() {
        return pr_allow;
    }

    /**
     * @param pr_allow the pr_allow to set
     */
    public void setPr_allow(String pr_allow) {
        this.pr_allow = pr_allow;
    }

    /**
     * @return the pr_tract
     */
    public String getPr_tract() {
        return pr_tract;
    }

    /**
     * @param pr_tract the pr_tract to set
     */
    public void setPr_tract(String pr_tract) {
        this.pr_tract = pr_tract;
    }

    /**
     * @return the c_store
     */
    public String getC_store() {
        return c_store;
    }

    /**
     * @param c_store the c_store to set
     */
    public void setC_store(String c_store) {
        this.c_store = c_store;
    }

    /**
     * @return the c_owner
     */
    public String getC_owner() {
        return c_owner;
    }

    /**
     * @param c_owner the c_owner to set
     */
    public void setC_owner(String c_owner) {
        this.c_owner = c_owner;
    }

    /**
     * @return the c_contact
     */
    public String getC_contact() {
        return c_contact;
    }

    /**
     * @param c_contact the c_contact to set
     */
    public void setC_contact(String c_contact) {
        this.c_contact = c_contact;
    }

    /**
     * @return the c_location
     */
    public String getC_location() {
        return c_location;
    }

    /**
     * @param c_location the c_location to set
     */
    public void setC_location(String c_location) {
        this.c_location = c_location;
    }

    /**
     * @return the c_sub_location
     */
    public String getC_sub_location() {
        return c_sub_location;
    }

    /**
     * @param c_sub_location the c_sub_location to set
     */
    public void setC_sub_location(String c_sub_location) {
        this.c_sub_location = c_sub_location;
    }

    /**
     * @return the c_pricing_name
     */
    public String getC_pricing_name() {
        return c_pricing_name;
    }

    /**
     * @param c_pricing_name the c_pricing_name to set
     */
    public void setC_pricing_name(String c_pricing_name) {
        this.c_pricing_name = c_pricing_name;
    }

    /**
     * @return the c_ar
     */
    public String getC_ar() {
        return c_ar;
    }

    /**
     * @param c_ar the c_ar to set
     */
    public void setC_ar(String c_ar) {
        this.c_ar = c_ar;
    }

    /**
     * @return the c_id
     */
    public String getC_id() {
        return c_id;
    }

    /**
     * @param c_id the c_id to set
     */
    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    /**
     * @return the price_id
     */
    public String getPrice_id() {
        return price_id;
    }

    /**
     * @param price_id the price_id to set
     */
    public void setPrice_id(String price_id) {
        this.price_id = price_id;
    }

    /**
     * @return the price_fk_customer
     */
    public String getPrice_fk_customer() {
        return price_fk_customer;
    }

    /**
     * @param price_fk_customer the price_fk_customer to set
     */
    public void setPrice_fk_customer(String price_fk_customer) {
        this.price_fk_customer = price_fk_customer;
    }

    /**
     * @return the price_fk_product_id
     */
    public String getPrice_fk_product_id() {
        return price_fk_product_id;
    }

    /**
     * @param price_fk_product_id the price_fk_product_id to set
     */
    public void setPrice_fk_product_id(String price_fk_product_id) {
        this.price_fk_product_id = price_fk_product_id;
    }

    /**
     * @return the price_prc
     */
    public String getPrice_prc() {
        return price_prc;
    }

    /**
     * @param price_prc the price_prc to set
     */
    public void setPrice_prc(String price_prc) {
        this.price_prc = price_prc;
    }

    /**
     * @return the price_prod_name
     */
    public String getPrice_prod_name() {
        return price_prod_name;
    }

    /**
     * @param price_prod_name the price_prod_name to set
     */
    public void setPrice_prod_name(String price_prod_name) {
        this.price_prod_name = price_prod_name;
    }

    /**
     * @return the price_prod_id
     */
    public String getPrice_prod_id() {
        return price_prod_id;
    }

    /**
     * @param price_prod_id the price_prod_id to set
     */
    public void setPrice_prod_id(String price_prod_id) {
        this.price_prod_id = price_prod_id;
    }

    /**
     * @return the so_pk
     */
    public String getSo_pk() {
        return so_pk;
    }

    /**
     * @param so_pk the so_pk to set
     */
    public void setSo_pk(String so_pk) {
        this.so_pk = so_pk;
    }

    /**
     * @return the so_customer
     */
    public String getSo_customer() {
        return so_customer;
    }

    /**
     * @param so_customer the so_customer to set
     */
    public void setSo_customer(String so_customer) {
        this.so_customer = so_customer;
    }

    /**
     * @return the so_store
     */
    public String getSo_store() {
        return so_store;
    }

    /**
     * @param so_store the so_store to set
     */
    public void setSo_store(String so_store) {
        this.so_store = so_store;
    }

    /**
     * @return the so_order
     */
    public String getSo_order() {
        return so_order;
    }

    /**
     * @param so_order the so_order to set
     */
    public void setSo_order(String so_order) {
        this.so_order = so_order;
    }

    /**
     * @return the so_payment
     */
    public String getSo_payment() {
        return so_payment;
    }

    /**
     * @param so_payment the so_payment to set
     */
    public void setSo_payment(String so_payment) {
        this.so_payment = so_payment;
    }

    /**
     * @return the so_status
     */
    public String getSo_status() {
        return so_status;
    }

    /**
     * @param so_status the so_status to set
     */
    public void setSo_status(String so_status) {
        this.so_status = so_status;
    }

    /**
     * @return the so_ar
     */
    public String getSo_ar() {
        return so_ar;
    }

    /**
     * @param so_ar the so_ar to set
     */
    public void setSo_ar(String so_ar) {
        this.so_ar = so_ar;
    }

    /**
     * @return the so_location
     */
    public String getSo_location() {
        return so_location;
    }

    /**
     * @param so_location the so_location to set
     */
    public void setSo_location(String so_location) {
        this.so_location = so_location;
    }

    /**
     * @return the so_total_qty
     */
    public String getSo_total_qty() {
        return so_total_qty;
    }

    /**
     * @param so_total_qty the so_total_qty to set
     */
    public void setSo_total_qty(String so_total_qty) {
        this.so_total_qty = so_total_qty;
    }

    /**
     * @return the so_total_prc
     */
    public String getSo_total_prc() {
        return so_total_prc;
    }

    /**
     * @param so_total_prc the so_total_prc to set
     */
    public void setSo_total_prc(String so_total_prc) {
        this.so_total_prc = so_total_prc;
    }

    /**
     * @return the so_per_qty_item
     */
    public String getSo_per_qty_item() {
        return so_per_qty_item;
    }

    /**
     * @param so_per_qty_item the so_per_qty_item to set
     */
    public void setSo_per_qty_item(String so_per_qty_item) {
        this.so_per_qty_item = so_per_qty_item;
    }

    /**
     * @return the so_per_prc_item
     */
    public String getSo_per_prc_item() {
        return so_per_prc_item;
    }

    /**
     * @param so_per_prc_item the so_per_prc_item to set
     */
    public void setSo_per_prc_item(String so_per_prc_item) {
        this.so_per_prc_item = so_per_prc_item;
    }

    /**
     * @return the so_product_name
     */
    public String getSo_product_name() {
        return so_product_name;
    }

    /**
     * @param so_product_name the so_product_name to set
     */
    public void setSo_product_name(String so_product_name) {
        this.so_product_name = so_product_name;
    }

    /**
     * @return the so_fk
     */
    public String getSo_fk() {
        return so_fk;
    }

    /**
     * @param so_fk the so_fk to set
     */
    public void setSo_fk(String so_fk) {
        this.so_fk = so_fk;
    }

    /**
     * @return the so_price_per_item
     */
    public String getSo_price_per_item() {
        return so_price_per_item;
    }

    /**
     * @param so_price_per_item the so_price_per_item to set
     */
    public void setSo_price_per_item(String so_price_per_item) {
        this.so_price_per_item = so_price_per_item;
    }

    /**
     * @return the time_stamp
     */
    public Timestamp getTime_stamp() {
        return time_stamp;
    }

    /**
     * @param time_stamp the time_stamp to set
     */
    public void setTime_stamp(Timestamp time_stamp) {
        this.time_stamp = time_stamp;
    }

    /**
     * @return the v_pk_vendor
     */
    public String getV_pk_vendor() {
        return v_pk_vendor;
    }

    /**
     * @param v_pk_vendor the v_pk_vendor to set
     */
    public void setV_pk_vendor(String v_pk_vendor) {
        this.v_pk_vendor = v_pk_vendor;
    }

    /**
     * @return the v_vendor_name
     */
    public String getV_vendor_name() {
        return v_vendor_name;
    }

    /**
     * @param v_vendor_name the v_vendor_name to set
     */
    public void setV_vendor_name(String v_vendor_name) {
        this.v_vendor_name = v_vendor_name;
    }

    /**
     * @return the v_check_name
     */
    public String getV_check_name() {
        return v_check_name;
    }

    /**
     * @param v_check_name the v_check_name to set
     */
    public void setV_check_name(String v_check_name) {
        this.v_check_name = v_check_name;
    }

    /**
     * @return the v_warehouse_loc
     */
    public String getV_warehouse_loc() {
        return v_warehouse_loc;
    }

    /**
     * @param v_warehouse_loc the v_warehouse_loc to set
     */
    public void setV_warehouse_loc(String v_warehouse_loc) {
        this.v_warehouse_loc = v_warehouse_loc;
    }

    /**
     * @return the v_office_add
     */
    public String getV_office_add() {
        return v_office_add;
    }

    /**
     * @param v_office_add the v_office_add to set
     */
    public void setV_office_add(String v_office_add) {
        this.v_office_add = v_office_add;
    }

    /**
     * @return the v_contact1
     */
    public String getV_contact1() {
        return v_contact1;
    }

    /**
     * @param v_contact1 the v_contact1 to set
     */
    public void setV_contact1(String v_contact1) {
        this.v_contact1 = v_contact1;
    }

    /**
     * @return the v_contact2
     */
    public String getV_contact2() {
        return v_contact2;
    }

    /**
     * @param v_contact2 the v_contact2 to set
     */
    public void setV_contact2(String v_contact2) {
        this.v_contact2 = v_contact2;
    }

    /**
     * @return the v_contact3
     */
    public String getV_contact3() {
        return v_contact3;
    }

    /**
     * @param v_contact3 the v_contact3 to set
     */
    public void setV_contact3(String v_contact3) {
        this.v_contact3 = v_contact3;
    }

    /**
     * @return the v_primary_contact
     */
    public String getV_primary_contact() {
        return v_primary_contact;
    }

    /**
     * @param v_primary_contact the v_primary_contact to set
     */
    public void setV_primary_contact(String v_primary_contact) {
        this.v_primary_contact = v_primary_contact;
    }

    /**
     * @return the v_secondary_contact
     */
    public String getV_secondary_contact() {
        return v_secondary_contact;
    }

    /**
     * @param v_secondary_contact the v_secondary_contact to set
     */
    public void setV_secondary_contact(String v_secondary_contact) {
        this.v_secondary_contact = v_secondary_contact;
    }

    /**
     * @return the v_class
     */
    public String getV_class() {
        return v_class;
    }

    /**
     * @param v_class the v_class to set
     */
    public void setV_class(String v_class) {
        this.v_class = v_class;
    }

    /**
     * @return the v_grouping
     */
    public String getV_grouping() {
        return v_grouping;
    }

    /**
     * @param v_grouping the v_grouping to set
     */
    public void setV_grouping(String v_grouping) {
        this.v_grouping = v_grouping;
    }

    /**
     * @return the v_ap
     */
    public String getV_ap() {
        return v_ap;
    }

    /**
     * @param v_ap the v_ap to set
     */
    public void setV_ap(String v_ap) {
        this.v_ap = v_ap;
    }

    /**
     * @return the pr_inventory
     */
    public String getPr_inventory() {
        return pr_inventory;
    }

    /**
     * @param pr_inventory the pr_inventory to set
     */
    public void setPr_inventory(String pr_inventory) {
        this.pr_inventory = pr_inventory;
    }

    /**
     * @return the po_primary
     */
    public String getPo_primary() {
        return po_primary;
    }

    /**
     * @param po_primary the po_primary to set
     */
    public void setPo_primary(String po_primary) {
        this.po_primary = po_primary;
    }

    /**
     * @return the po_contact1
     */
    public String getPo_contact1() {
        return po_contact1;
    }

    /**
     * @param po_contact1 the po_contact1 to set
     */
    public void setPo_contact1(String po_contact1) {
        this.po_contact1 = po_contact1;
    }

    /**
     * @return the po_pk
     */
    public String getPo_pk() {
        return po_pk;
    }

    /**
     * @param po_pk the po_pk to set
     */
    public void setPo_pk(String po_pk) {
        this.po_pk = po_pk;
    }

    /**
     * @return the po_fk
     */
    public String getPo_fk() {
        return po_fk;
    }

    /**
     * @param po_fk the po_fk to set
     */
    public void setPo_fk(String po_fk) {
        this.po_fk = po_fk;
    }

    /**
     * @return the po_vendor
     */
    public String getPo_vendor() {
        return po_vendor;
    }

    /**
     * @param po_vendor the po_vendor to set
     */
    public void setPo_vendor(String po_vendor) {
        this.po_vendor = po_vendor;
    }

    /**
     * @return the po_order
     */
    public String getPo_order() {
        return po_order;
    }

    /**
     * @param po_order the po_order to set
     */
    public void setPo_order(String po_order) {
        this.po_order = po_order;
    }

    /**
     * @return the po_payment
     */
    public String getPo_payment() {
        return po_payment;
    }

    /**
     * @param po_payment the po_payment to set
     */
    public void setPo_payment(String po_payment) {
        this.po_payment = po_payment;
    }

    /**
     * @return the po_status
     */
    public String getPo_status() {
        return po_status;
    }

    /**
     * @param po_status the po_status to set
     */
    public void setPo_status(String po_status) {
        this.po_status = po_status;
    }

    /**
     * @return the po_total_qty
     */
    public String getPo_total_qty() {
        return po_total_qty;
    }

    /**
     * @param po_total_qty the po_total_qty to set
     */
    public void setPo_total_qty(String po_total_qty) {
        this.po_total_qty = po_total_qty;
    }

    /**
     * @return the po_total_prc
     */
    public String getPo_total_prc() {
        return po_total_prc;
    }

    /**
     * @param po_total_prc the po_total_prc to set
     */
    public void setPo_total_prc(String po_total_prc) {
        this.po_total_prc = po_total_prc;
    }

    /**
     * @return the po_per_qty_item
     */
    public String getPo_per_qty_item() {
        return po_per_qty_item;
    }

    /**
     * @param po_per_qty_item the po_per_qty_item to set
     */
    public void setPo_per_qty_item(String po_per_qty_item) {
        this.po_per_qty_item = po_per_qty_item;
    }

    /**
     * @return the po_per_prc_item
     */
    public String getPo_per_prc_item() {
        return po_per_prc_item;
    }

    /**
     * @param po_per_prc_item the po_per_prc_item to set
     */
    public void setPo_per_prc_item(String po_per_prc_item) {
        this.po_per_prc_item = po_per_prc_item;
    }

    /**
     * @return the po_product_name
     */
    public String getPo_product_name() {
        return po_product_name;
    }

    /**
     * @param po_product_name the po_product_name to set
     */
    public void setPo_product_name(String po_product_name) {
        this.po_product_name = po_product_name;
    }

    /**
     * @return the po_price_per_item
     */
    public String getPo_price_per_item() {
        return po_price_per_item;
    }

    /**
     * @param po_price_per_item the po_price_per_item to set
     */
    public void setPo_price_per_item(String po_price_per_item) {
        this.po_price_per_item = po_price_per_item;
    }

    /**
     * @return the po_delivery
     */
    /**
     * @return the po_other_discount
     */
    public String getPo_other_discount() {
        return po_other_discount;
    }

    /**
     * @param po_other_discount the po_other_discount to set
     */
    public void setPo_other_discount(String po_other_discount) {
        this.po_other_discount = po_other_discount;
    }

    /**
     * @return the po_total_discount
     */
    public String getPo_total_discount() {
        return po_total_discount;
    }

    /**
     * @param po_total_discount the po_total_discount to set
     */
    public void setPo_total_discount(String po_total_discount) {
        this.po_total_discount = po_total_discount;
    }

    /**
     * @return the po_A_discount
     */
    public String getPo_A_discount() {
        return po_A_discount;
    }

    /**
     * @param po_A_discount the po_A_discount to set
     */
    public void setPo_A_discount(String po_A_discount) {
        this.po_A_discount = po_A_discount;
    }

    /**
     * @return the po_D_amount
     */
    public String getPo_D_amount() {
        return po_D_amount;
    }

    /**
     * @param po_D_amount the po_D_amount to set
     */
    public void setPo_D_amount(String po_D_amount) {
        this.po_D_amount = po_D_amount;
    }

    /**
     * @return the po_D_percent
     */
    public String getPo_D_percent() {
        return po_D_percent;
    }

    /**
     * @param po_D_percent the po_D_percent to set
     */
    public void setPo_D_percent(String po_D_percent) {
        this.po_D_percent = po_D_percent;
    }

    /**
     * @return the po_available
     */
    public String getPo_available() {
        return po_available;
    }

    /**
     * @param po_available the po_available to set
     */
    public void setPo_available(String po_available) {
        this.po_available = po_available;
    }

    /**
     * @return the po_instock
     */
    public String getPo_instock() {
        return po_instock;
    }

    /**
     * @param po_instock the po_instock to set
     */
    public void setPo_instock(String po_instock) {
        this.po_instock = po_instock;
    }

    /**
     * @return the po_product_id
     */
    public String getPo_product_id() {
        return po_product_id;
    }

    /**
     * @param po_product_id the po_product_id to set
     */
    public void setPo_product_id(String po_product_id) {
        this.po_product_id = po_product_id;
    }

    /**
     * @return the po_after
     */
    public String getPo_after() {
        return po_after;
    }

    /**
     * @param po_after the po_after to set
     */
    public void setPo_after(String po_after) {
        this.po_after = po_after;
    }

    /**
     * @return the po_total_prc_perItem
     */
    public String getPo_total_prc_perItem() {
        return po_total_prc_perItem;
    }

    /**
     * @param po_total_prc_perItem the po_total_prc_perItem to set
     */
    public void setPo_total_prc_perItem(String po_total_prc_perItem) {
        this.po_total_prc_perItem = po_total_prc_perItem;
    }

    /**
     * @return the po_delivery
     */
    public String getPo_delivery() {
        return po_delivery;
    }

    /**
     * @param po_delivery the po_delivery to set
     */
    public void setPo_delivery(String po_delivery) {
        this.po_delivery = po_delivery;
    }

    /**
     * @return the po_id
     */
    public String getPo_id() {
        return po_id;
    }

    /**
     * @param po_id the po_id to set
     */
    public void setPo_id(String po_id) {
        this.po_id = po_id;
    }

    /**
     * @return the inv_pr_id
     */
    public String getInv_pr_id() {
        return inv_pr_id;
    }

    /**
     * @param inv_pr_id the inv_pr_id to set
     */
    public void setInv_pr_id(String inv_pr_id) {
        this.inv_pr_id = inv_pr_id;
    }

    /**
     * @return the inv_stock
     */
    public String getInv_stock() {
        return inv_stock;
    }

    /**
     * @param inv_stock the inv_stock to set
     */
    public void setInv_stock(String inv_stock) {
        this.inv_stock = inv_stock;
    }

    /**
     * @return the inv_pr_name
     */
    public String getInv_pr_name() {
        return inv_pr_name;
    }

    /**
     * @param inv_pr_name the inv_pr_name to set
     */
    public void setInv_pr_name(String inv_pr_name) {
        this.inv_pr_name = inv_pr_name;
    }

    /**
     * @return the inv_so_not_F
     */
    public String getInv_so_not_F() {
        return inv_so_not_F;
    }

    /**
     * @param inv_so_not_F the inv_so_not_F to set
     */
    public void setInv_so_not_F(String inv_so_not_F) {
        this.inv_so_not_F = inv_so_not_F;
    }

    /**
     * @return the inv_so_F
     */
    public String getInv_so_F() {
        return inv_so_F;
    }

    /**
     * @param inv_so_F the inv_so_F to set
     */
    public void setInv_so_F(String inv_so_F) {
        this.inv_so_F = inv_so_F;
    }

    /**
     * @return the inv_po_not_F
     */
    public String getInv_po_not_F() {
        return inv_po_not_F;
    }

    /**
     * @param inv_po_not_F the inv_po_not_F to set
     */
    public void setInv_po_not_F(String inv_po_not_F) {
        this.inv_po_not_F = inv_po_not_F;
    }

    /**
     * @return the inv_po_F
     */
    public String getInv_po_F() {
        return inv_po_F;
    }

    /**
     * @param inv_po_F the inv_po_F to set
     */
    public void setInv_po_F(String inv_po_F) {
        this.inv_po_F = inv_po_F;
    }

    /**
     * @return the inv_available
     */
    public String getInv_available() {
        return inv_available;
    }

    /**
     * @param inv_available the inv_available to set
     */
    public void setInv_available(String inv_available) {
        this.inv_available = inv_available;
    }

    /**
     * @return the inv_future_po
     */
    public String getInv_future_po() {
        return inv_future_po;
    }

    /**
     * @param inv_future_po the inv_future_po to set
     */
    public void setInv_future_po(String inv_future_po) {
        this.inv_future_po = inv_future_po;
    }

    /**
     * @return the inv_commited
     */
    public String getInv_commited() {
        return inv_commited;
    }

    /**
     * @param inv_commited the inv_commited to set
     */
    public void setInv_commited(String inv_commited) {
        this.inv_commited = inv_commited;
    }

    /**
     * @return the po_final_status
     */
    public String getPo_final_status() {
        return po_final_status;
    }

    /**
     * @param po_final_status the po_final_status to set
     */
    public void setPo_final_status(String po_final_status) {
        this.po_final_status = po_final_status;
    }

    /**
     * @return the so_final_status
     */
    public String getSo_final_status() {
        return so_final_status;
    }

    /**
     * @param so_final_status the so_final_status to set
     */
    public void setSo_final_status(String so_final_status) {
        this.so_final_status = so_final_status;
    }

    /**
     * @return the so_product_id
     */
    public String getSo_product_id() {
        return so_product_id;
    }

    /**
     * @param so_product_id the so_product_id to set
     */
    public void setSo_product_id(String so_product_id) {
        this.so_product_id = so_product_id;
    }

    /**
     * @return the date_created
     */
    public String getDate_created() {
        return date_created;
    }

    /**
     * @param date_created the date_created to set
     */
    public void setDate_created(String date_created) {
        this.date_created = date_created;
    }

    /**
     * @return the Created_timestamp
     */
    public Timestamp getCreated_timestamp() {
        return Created_timestamp;
    }

    /**
     * @param Created_timestamp the Created_timestamp to set
     */
    public void setCreated_timestamp(Timestamp Created_timestamp) {
        this.Created_timestamp = Created_timestamp;
    }

    /**
     * @return the date_final
     */
    public String getDate_final() {
        return date_final;
    }

    /**
     * @param date_final the date_final to set
     */
    public void setDate_final(String date_final) {
        this.date_final = date_final;
    }

    /**
     * @return the so_remarks
     */
    public String getSo_remarks() {
        return so_remarks;
    }

    /**
     * @param so_remarks the so_remarks to set
     */
    public void setSo_remarks(String so_remarks) {
        this.so_remarks = so_remarks;
    }

  
   

}
