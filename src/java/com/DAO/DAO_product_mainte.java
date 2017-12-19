/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import com.basher.model.SalesOrderModel;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class DAO_product_mainte {

    PreparedStatement ps = null;
    ResultSet rs;

    public void insertAbout(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT INTO `tbl_product_maintenance`(`product_name`, `size`, `brand`, `group`, `allow_sale`, `tract_price`, `inv_stock`) VALUES (?,?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPr_name());
            ps.setString(2, so.getPr_size());
            ps.setString(3, so.getPr_brand());
            ps.setString(4, so.getPr_group());
            ps.setString(5, so.getPr_allow());
            ps.setString(6, so.getPr_tract());
            ps.setString(7, so.getPr_inventory());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insertPricing_table(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT into `tbl_pricing_maintenance`(`fk_customer`, `fk_product_id`, `price`, `prod_name`) VALUES (?,?,?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPrice_fk_customer());
            ps.setString(2, so.getPrice_fk_product_id());
            ps.setString(3, so.getPrice_prc());
            ps.setString(4, so.getPrice_prod_name());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insertPricing_table_vendor(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT into `tbl_pricing_maintenance_vendor`(`fk_vendor`, `fk_product_id`, `price`, `prod_name`) VALUES (?,?,?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPrice_fk_customer());
            ps.setString(2, so.getPrice_fk_product_id());
            ps.setString(3, so.getPrice_prc());
            ps.setString(4, so.getPrice_prod_name());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insertSO_table(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

//        String insert_about = "INSERT into `tbl_so`(`customer_name`, `store_name`, `prod_name`, `type_order`, `type_payment`, `so_status`, `current_ar`, `total_qty`, `total_price`, `qty_per_item`, `price_per_item`, `fk`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        String insert_about = "INSERT INTO tbl_so(so_id, customer_name, store_name, prod_name, type_order,type_payment,so_status,current_ar, total_qty, total_price, qty_per_item, price_per_item, fk, so_price_per_item, so_fk_product, so_remarks)\n"
                + "SELECT MAX(pk_joint_so),?,?,?,?,?,?,?,?,?,?,?,?,?,?,? FROM tbl_joint_so";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getSo_customer());
            ps.setString(2, so.getSo_store());
            ps.setString(3, so.getSo_product_name());
            ps.setString(4, so.getSo_order());
            ps.setString(5, so.getSo_payment());
            ps.setString(6, so.getSo_status());
            ps.setString(7, so.getSo_ar());
            ps.setString(8, so.getSo_total_qty());
            ps.setString(9, so.getSo_total_prc());
            ps.setString(10, so.getSo_per_qty_item());
            ps.setString(11, so.getSo_per_prc_item());
            ps.setString(12, so.getSo_fk());
            ps.setString(13, so.getSo_price_per_item());
            ps.setString(14, so.getPr_id());
            ps.setString(15, so.getSo_remarks());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    //PENDING
    public void insertPO_table(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

//        String insert_about = "INSERT into `tbl_so`(`pk_id`, `customer_name`, `store_name`, `prod_name`, `type_order`, `type_payment`, `so_status`, `current_ar`, `total_qty`, `total_price`, `qty_per_item`, `price_per_item`, `fk`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        String insert_about = "INSERT INTO tbl_po(`po_id`, `po_vendor_name`, `po_fk_vendor`, `po_product_id`, `po_type_order`, `po_type_payment`, `po_delivery_date`, `po_other_discount`, `po_total_discount`, `po_per_discount_amt`, `po_per_discount_percent`, `po_per_discount_after`, `po_price_perItem`, `po_qty_periItem`, `po_total_qty`, `po_total_price`, `po_product_name`, `po_total_price_perItem_no_discount`, `po_fk_product_id`)\n"
                + "SELECT MAX(pk_joint_po),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,? FROM tbl_joint_po";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPo_vendor());
            ps.setString(2, so.getPo_fk());
            ps.setString(3, so.getPo_product_id());
            ps.setString(4, so.getPo_order());
            ps.setString(5, so.getPo_payment());
            ps.setString(6, so.getPo_delivery());
            ps.setString(7, so.getPo_other_discount());
            ps.setString(8, so.getPo_total_discount());
            ps.setString(9, so.getPo_D_amount());
            ps.setString(10, so.getPo_D_percent());
            ps.setString(11, so.getPo_A_discount());
            ps.setString(12, so.getPo_price_per_item());
            ps.setString(13, so.getPo_per_qty_item());
            ps.setString(14, so.getPo_total_qty());
            ps.setString(15, so.getPo_total_prc());
            ps.setString(16, so.getPo_product_name());
            ps.setString(17, so.getPo_total_prc_perItem());
            ps.setString(18, so.getPr_id());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insert_joint_SO(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT INTO `tbl_joint_so`(`fk_customer_id`, `store_name`) VALUES (?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getSo_customer());
            ps.setString(2, so.getSo_store());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insert_joint_PO(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT INTO `tbl_joint_po`(`fk_vendor_id`, `vendor_name`) VALUES (?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPo_fk());
            ps.setString(2, so.getPo_vendor());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updatePricing_table(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_pricing_maintenance` SET `price`=? WHERE pricing_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
//      
            ps.setString(1, so.getPrice_prc());
            ps.setString(2, so.getPrice_fk_product_id());
//           

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updatePricing_table_vendor(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_pricing_maintenance_vendor` SET `price`=? WHERE pricing_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
//      
            ps.setString(1, so.getPrice_prc());
            ps.setString(2, so.getPrice_fk_product_id());
//           

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_item_per_SO_customer(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_so` SET `fk`=?,`customer_name`=?,`store_name`=?,`prod_name`=?,`type_order`=?,`type_payment`=?,`so_status`=?,`total_qty`=?,`total_price`=?,`qty_per_item`=?,`price_per_item`=?,`so_remarks`=? WHERE pk=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getSo_fk());
            ps.setString(2, so.getSo_customer());
            ps.setString(3, so.getSo_store());
            ps.setString(4, so.getSo_product_name());
            ps.setString(5, so.getSo_order());
            ps.setString(6, so.getSo_payment());
            ps.setString(7, so.getSo_status());
            ps.setString(8, so.getSo_total_qty());
            ps.setString(9, so.getSo_total_prc());
            ps.setString(10, so.getSo_per_qty_item());
            ps.setString(11, so.getSo_per_prc_item());
            ps.setString(12, so.getSo_remarks());
            ps.setString(13, so.getSo_pk());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_item_per_PO_vendor(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

//        String insert_about = "UPDATE `tbl_so` SET `fk`=?,`customer_name`=?,`store_name`=?,`prod_name`=?,`type_order`=?,`type_payment`=?,`so_status`=?,`total_qty`=?,`total_price`=?,`qty_per_item`=?,`price_per_item`=? WHERE pk=?";
        String insert_about = "UPDATE `tbl_po` SET `po_product_name`=?,`po_type_order`=?,`po_type_payment`=?,"
                + "`po_delivery_date`=?,`po_other_discount`=?,`po_total_discount`=?,"
                + "`po_per_discount_amt`=?,`po_per_discount_percent`=?,`po_per_discount_after`=?,"
                + "`po_price_perItem`=?,`po_qty_periItem`=?,`po_total_qty`=?,"
                + "`po_total_price`=?"
                + "WHERE `pk_po`=?";

        try {
            ps = conn.prepareStatement(insert_about);

            ps.setString(1, so.getPo_product_name());
            ps.setString(2, so.getPo_order());
            ps.setString(3, so.getPo_payment());
            ps.setString(4, so.getPo_delivery());
            ps.setString(5, so.getPo_other_discount());
            ps.setString(6, so.getPo_total_discount());
            ps.setString(7, so.getPo_D_amount());
            ps.setString(8, so.getPo_D_percent());
            ps.setString(9, so.getPo_A_discount());
            ps.setString(10, so.getPo_price_per_item());
            ps.setString(11, so.getPo_per_qty_item());
            ps.setString(12, so.getPo_total_qty());
            ps.setString(13, so.getPo_total_prc());
            ps.setString(14, so.getPo_product_id());

//           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_item_per_SO_customer_to_INACTIVE(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_so` SET `status`=? WHERE so_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, "inactive");
            ps.setString(2, so.getSo_pk());

//           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }
    
    public void update_item_per_SO_customer_to_PAID(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_so` SET `so_status`=? WHERE so_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, "Paid");
            ps.setString(2, so.getSo_pk());

//           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_po_item_Final(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_po` SET `po_status_final`=? WHERE po_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, "final");
            ps.setString(2, so.getPo_id());

//           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);

        }

    }

    public void update_po_so_Final(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_product_maintenance` SET `inv_stock` = `inv_stock`+?   WHERE product_id = ?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPo_per_qty_item());
            ps.setString(2, so.getPo_product_id());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_so_Final(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_product_maintenance` SET `inv_stock` = `inv_stock`-? WHERE product_id = ?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getSo_per_qty_item());
            ps.setString(2, so.getSo_product_id());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_so_item_Final(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_so` SET `so_status_final`=? WHERE so_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, "final");
            ps.setString(2, so.getSo_fk());

//           
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insertCustomer(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT INTO `tbl_customer_maintenance`(`store`, `owner`, `contact`, `location`, `sub_location`, `pricing_name`, `ar`) VALUES (?,?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getC_store());
            ps.setString(2, so.getC_owner());
            ps.setString(3, so.getC_contact());
            ps.setString(4, so.getC_location());
            ps.setString(5, so.getC_sub_location());
            ps.setString(6, so.getC_pricing_name());
            ps.setString(7, so.getC_ar());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void insertVendor(SalesOrderModel vendor) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "INSERT INTO `tbl_vendor_maintenance`(`vendor_name`, `vendor_chk_name`, `vendor_warehouse_location`, `vendor_office_address`, `vendor_contact1`, `vendor_contact2`, `vendor_contact3`, `vendor_primary_contact`, `vendor_secondary_contact`, `vendor_class`, `vendor_grouping`, `vendor_ap`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, vendor.getV_vendor_name());
            ps.setString(2, vendor.getV_check_name());
            ps.setString(3, vendor.getV_warehouse_loc());
            ps.setString(4, vendor.getV_office_add());
            ps.setString(5, vendor.getV_contact1());
            ps.setString(6, vendor.getV_contact2());
            ps.setString(7, vendor.getV_contact3());
            ps.setString(8, vendor.getV_primary_contact());
            ps.setString(9, vendor.getV_secondary_contact());
            ps.setString(10, vendor.getV_class());
            ps.setString(11, vendor.getV_grouping());
            ps.setString(12, vendor.getV_ap());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_customer(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_customer_maintenance` SET `store`=?,`owner`=?,`contact`=?,`location`=?,`sub_location`=?,`pricing_name`=?,`ar`=? WHERE pk=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getC_store());
            ps.setString(2, so.getC_owner());
            ps.setString(3, so.getC_contact());
            ps.setString(4, so.getC_location());
            ps.setString(5, so.getC_sub_location());
            ps.setString(6, so.getC_pricing_name());
            ps.setString(7, so.getC_ar());
            ps.setString(8, so.getC_id());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_vendor(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_vendor_maintenance` SET `vendor_name`=?,`vendor_chk_name`=?,`vendor_warehouse_location`=?,`vendor_office_address`=?,`vendor_contact1`=?,`vendor_contact2`=?,`vendor_contact3`=?,`vendor_primary_contact`=?,`vendor_secondary_contact`=?,`vendor_class`=?,`vendor_grouping`=?,`vendor_ap`=? WHERE `pk_vendor`=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getV_vendor_name());
            ps.setString(2, so.getV_check_name());
            ps.setString(3, so.getV_warehouse_loc());
            ps.setString(4, so.getV_office_add());
            ps.setString(5, so.getV_contact1());
            ps.setString(6, so.getV_contact2());
            ps.setString(7, so.getV_contact3());
            ps.setString(8, so.getV_primary_contact());
            ps.setString(9, so.getV_secondary_contact());
            ps.setString(10, so.getV_class());
            ps.setString(11, so.getV_grouping());
            ps.setString(12, so.getV_ap());
            ps.setString(13, so.getV_pk_vendor());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_vendor_to_inactive(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_vendor_maintenance` SET `status`=? WHERE `pk_vendor`=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, "inactive");
            ps.setString(2, so.getV_pk_vendor());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_product(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_product_maintenance` SET `product_name`=?,`size`=?,`brand`=?,`group`=?,`allow_sale`=?,`tract_price`=?,`inv_stock`=? WHERE product_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPr_name());
            ps.setString(2, so.getPr_size());
            ps.setString(3, so.getPr_brand());
            ps.setString(4, so.getPr_group());
            ps.setString(5, so.getPr_allow());
            ps.setString(6, so.getPr_tract());
            ps.setString(7, so.getPr_inventory());
            ps.setString(8, so.getPr_id());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_product_in_pricing_via_FK(SalesOrderModel so) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "UPDATE `tbl_pricing_maintenance` SET `product_name`=? WHERE fk_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, so.getPr_name());
            ps.setString(2, so.getPr_id());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void delete_product(String id) {
        System.out.println(id);
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "DELETE FROM `tbl_product_maintenance` WHERE product_id=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void delete_pricing_by_customer(String id) {
        System.out.println(id);
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "DELETE FROM `tbl_pricing_maintenance` WHERE fk_customer=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void delete_pricing_by_vendor(String id) {
        System.out.println(id);
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_about = "DELETE FROM `tbl_pricing_maintenance_vendor` WHERE fk_vendor=?";

        try {
            ps = conn.prepareStatement(insert_about);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void delete_customer(String id) {
        System.out.println(id);
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_customer = "DELETE FROM `tbl_customer_maintenance` WHERE pk=?";

        try {
            ps = conn.prepareStatement(delete_customer);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public List<SalesOrderModel> getDetailsproduct_maintenance() throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM `tbl_product_maintenance`";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("product_name"));
                about.setPr_id(rs.getString("product_id"));
                about.setPr_size(rs.getString("size"));
                about.setPr_brand(rs.getString("brand"));

                about.setPr_group(rs.getString("group"));
                about.setPr_allow(rs.getString("allow_sale"));
                about.setPr_tract(rs.getString("tract_price"));
                about.setPr_inventory(rs.getString("inv_stock"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getInventory() throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "Select tp.product_id,tp.inv_stock,tp.product_name,\n"
//                + "(Select IFNULL(SUM(qty_per_item), 0) \n"
//                + " FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = tp.product_id)\n"
//                + " as so_not_F,\n"
//                + " \n"
//                + "(Select IFNULL(SUM(qty_per_item), 0) \n"
//                + " FROM tbl_so WHERE so_status_final = 'final' AND so_fk_product = tp.product_id)\n"
//                + "as so_F,\n"
//                + "\n"
//                + "(Select IFNULL(SUM(po_qty_periItem), 0) \n"
//                + " FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = tp.product_id)\n"
//                + "as po_not_F,\n"
//                + "\n"
//                + "(Select IFNULL(SUM(po_qty_periItem), 0) \n"
//                + " FROM tbl_po WHERE po_status_final = 'final' AND po_fk_product_id = tp.product_id)\n"
//                + "as po_F,\n"
//                + "\n"
//                + "(Select tp.inv_stock  - IFNULL(SUM(qty_per_item), 0)\n"
//                + " FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = tp.product_id)\n"
//                + "as `available`,\n"
//                + "\n"
//                + "(Select `available`  + IFNULL(SUM(po_qty_periItem), 0)\n"
//                + " FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = tp.product_id)\n"
//                + "as `future_po`,\n"
//                + "\n"
//                + "(Select (tp.inv_stock + SUM(po_qty_periItem)) - so_F\n"
//                + " FROM tbl_po WHERE po_status_final = 'final' AND po_fk_product_id = tp.product_id)\n"
//                + "as `commited`\n"
//                + "\n"
//                + "\n"
//                + "\n"
//                + "FROM `tbl_product_maintenance` tp";

        String query = "Select tp.product_id,tp.inv_stock,tp.product_name,\n"
                + "(Select IFNULL(SUM(qty_per_item), 0) \n"
                + "FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = tp.product_id)\n"
                + "as so_not_F,\n"
                + "(Select IFNULL(SUM(qty_per_item), 0)\n"
                + " FROM tbl_so WHERE so_status_final = 'final' AND so_fk_product = tp.product_id)\n"
                + "as so_F,\n"
                + "(Select IFNULL(SUM(po_qty_periItem), 0) \n"
                + "FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = tp.product_id)\n"
                + "as po_not_F,\n"
                + "(Select IFNULL(SUM(po_qty_periItem), 0) \n"
                + "FROM tbl_po WHERE po_status_final = 'final' AND po_fk_product_id = tp.product_id)\n"
                + "as po_F,\n"
                + "(Select tp.inv_stock  - IFNULL(SUM(qty_per_item), 0)\n"
                + " FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = tp.product_id)\n"
                + "as `available`,\n"
                + "(Select tp.`inv_stock`  + IFNULL(SUM(po_qty_periItem), 0)\n"
                + "FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = tp.product_id)\n"
                + "as `future_po`,\n"
                + "(Select (tp.inv_stock + SUM(po_qty_periItem)) - so_F\n"
                + "FROM tbl_po WHERE po_status_final = 'final' AND po_fk_product_id = tp.product_id)\n"
                + "as `commited`\n"
                + "FROM `tbl_product_maintenance` tp";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setInv_pr_id(rs.getString("product_id"));
                about.setInv_pr_name(rs.getString("product_name"));
                about.setInv_stock(rs.getString("inv_stock"));
                about.setInv_so_not_F(rs.getString("so_not_F"));
                about.setInv_so_F(rs.getString("so_F"));
                about.setInv_po_not_F(rs.getString("po_not_F"));
                about.setInv_po_F(rs.getString("po_F"));
                about.setInv_future_po(rs.getString("future_po"));
                about.setInv_available(rs.getString("available"));
                about.setInv_commited(rs.getString("commited"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetailspricing_per_customer(String set_pk) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT t1.pricing_id,t1.fk_customer,t1.fk_product_id,t3.product_name,t1.price, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer\n"
                + " inner join `tbl_product_maintenance` t3 on t3.product_id = t1.fk_product_id\n"
                + " where t1.fk_customer ='" + set_pk + "'";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("product_name"));
                about.setPr_id(rs.getString("fk_product_id"));
                about.setPrice_prc(rs.getString("price"));
                about.setPrice_id(rs.getString("pricing_id"));
//
//                about.setPr_group(rs.getString("group"));
//                about.setPr_allow(rs.getString("allow_sale"));
//                about.setPr_tract(rs.getString("tract_price"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetailspricing_per_vendor(String set_pk) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT t1.pricing_id,t1.fk_vendor,t1.fk_product_id,t3.product_name,t1.price, t2.vendor_name FROM `tbl_pricing_maintenance_vendor` t1 inner join `tbl_vendor_maintenance` t2 on t2.pk_vendor = t1.fk_vendor\n"
                + " inner join `tbl_product_maintenance` t3 on t3.product_id = t1.fk_product_id\n"
                + " where t1.fk_vendor ='" + set_pk + "'";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("product_name"));
                about.setPr_id(rs.getString("fk_product_id"));
                about.setPrice_prc(rs.getString("price"));
                about.setPrice_id(rs.getString("pricing_id"));
//
//                about.setPr_group(rs.getString("group"));
//                about.setPr_allow(rs.getString("allow_sale"));
//                about.setPr_tract(rs.getString("tract_price"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    //need update
    public List<SalesOrderModel> getDetailspricing_per_customer_SO(String set_pk) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.pricing_id,t1.fk_customer,t1.fk_product_id,t3.product_name,t1.price, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer\n"
//                + " inner join `tbl_product_maintenance` t3 on t3.product_id = t1.fk_product_id\n"
//                + " where t1.fk_customer ='" + set_pk + "'";

        String query = "SELECT t1.pricing_id,t1.fk_customer,t1.fk_product_id,t3.product_name,t1.price, t2.pricing_name, t3.inv_stock,\n"
                + "(Select t3.inv_stock  - IFNULL(SUM(qty_per_item), 0)\n"
                + "FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = t3.product_id)\n"
                + "as `available`,\n"
                + "(Select t3.inv_stock  + IFNULL(SUM(po_qty_periItem), 0)\n"
                + " FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = t3.product_id)\n"
                + "as future_po,\n"
                + "(Select IFNULL(SUM(qty_per_item), 0)\n"
                + "FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = t3.product_id)\n"
                + "as so_not_F\n"
                + "FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer\n"
                + "inner join `tbl_product_maintenance` t3 on t3.product_id = t1.fk_product_id\n"
                + "where t1.fk_customer ='" + set_pk + "'";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("product_name"));
                about.setPr_id(rs.getString("fk_product_id"));
                about.setPrice_prc(rs.getString("price"));
                about.setPrice_id(rs.getString("pricing_id"));

                about.setInv_stock(rs.getString("inv_stock"));
                about.setInv_available(rs.getString("available"));
                about.setInv_future_po(rs.getString("future_po"));
                about.setInv_so_not_F(rs.getString("so_not_F"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getAR_per_customer_SO(String set_pk, String from, String to) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

//        String query = "SELECT `pk`, `so_id`, `fk`, `customer_name`, `store_name`, `prod_name`, `type_order`, "
//                + "`type_payment`, `so_status`, `current_ar`, `location`, `so_price_per_item`, `total_qty`, "
//                + "`total_price`, `qty_per_item`, `price_per_item`, `status`, `so_fk_product`, `so_status_final`, "
//                + "`time_stamp`, `date_created` FROM `tbl_so` "
//                + "WHERE so_status_final = 'final' and fk='" + set_pk + "' group by so_id asc";
//        String query = "SELECT a.so_id,DATE_FORMAT(a.time_stamp,'%m/%d/%Y') as date_f,a.total_price,a.total_qty, DATE_FORMAT(b.time_stamp,'%m/%d/%Y') as date_c FROM `tbl_so` a\n"
//                + "inner join tbl_joint_so b on\n"
//                + "b.pk_joint_so = a.so_id\n"
//                + "where so_status_final = 'final' and fk='" + set_pk + "' and DATE(a.time_stamp) between '" + from + "' AND '" + to + "'\n"
//                + "group by so_id asc";
        String query = "SELECT a.so_id,DATE_FORMAT(a.time_stamp,'%m/%d/%Y') as date_f,a.total_price,a.total_qty, DATE_FORMAT(b.time_stamp,'%m/%d/%Y') as date_c, cm.ar FROM `tbl_so` a\n"
                + "inner join tbl_joint_so b on\n"
                + "b.pk_joint_so = a.so_id\n"
                + "inner join tbl_customer_maintenance cm on\n"
                + "cm.pk = a.fk\n"
                + "where so_status_final = 'final' and type_payment='Credit' and fk='" + set_pk + "' and DATE(a.time_stamp) between '" + from + "' AND '" + to + "'\n"
                + "group by so_id asc";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setSo_pk(rs.getString("a.so_id"));
                about.setDate_created(rs.getString("date_c"));
                about.setDate_final(rs.getString("date_f"));
                about.setSo_total_prc(rs.getString("a.total_price"));
                about.setSo_total_qty(rs.getString("a.total_qty"));
                about.setSo_ar(rs.getString("cm.ar"));
                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetailspricing_per_vendor_PO(String set_pk) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.pricing_id,t1.fk_vendor,t1.fk_product_id,t3.product_name,t1.price, t2.vendor_name FROM `tbl_pricing_maintenance_vendor` t1 inner join `tbl_vendor_maintenance` t2 on t2.pk_vendor = t1.fk_vendor inner join `tbl_product_maintenance` t3 on t3.product_id = t1.fk_product_id where t1.fk_vendor ='" + set_pk + "'"; // back up orignal
        String query = "SELECT t3.inv_stock,t1.pricing_id,t1.fk_vendor,t1.fk_product_id,t3.product_name,t1.price, t2.vendor_name,\n"
                + "(Select t3.inv_stock  - IFNULL(SUM(qty_per_item), 0)\n"
                + "FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = t3.product_id)\n"
                + "as `available`,\n"
                + "(Select t3.inv_stock  + IFNULL(SUM(po_qty_periItem), 0)\n"
                + "FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = t3.product_id)\n"
                + "as future_po\n"
                + "FROM `tbl_pricing_maintenance_vendor` t1 \n"
                + "inner join `tbl_vendor_maintenance` t2 on t2.pk_vendor = t1.fk_vendor \n"
                + "inner join `tbl_product_maintenance` t3 on t3.product_id = t1.fk_product_id\n"
                + "where t1.fk_vendor ='" + set_pk + "'";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("product_name"));
                about.setPr_id(rs.getString("fk_product_id"));
                about.setPrice_prc(rs.getString("price"));
                about.setPrice_id(rs.getString("pricing_id"));

                about.setInv_stock(rs.getString("inv_stock"));
                about.setInv_available(rs.getString("available"));
                about.setInv_future_po(rs.getString("future_po"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> update_SO_per_customer(String set_pk) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT `pk`, `so_id`, `customer_name`, `store_name`, `prod_name`, `type_order`, "
//                + "`type_payment`, `so_status`, `current_ar`, `total_qty`, `total_price`, `qty_per_item`, "
//                + "`price_per_item` , `so_price_per_item`, `time_stamp`, `so_status_final`, `so_fk_product` FROM `tbl_so` "
//                + "WHERE so_id='" + set_pk + "'";

        String query = "SELECT `pk`, `so_id`, `customer_name`, `store_name`, `prod_name`, `type_order`,\n"
                + "`type_payment`, `so_status`, `current_ar`, `total_qty`, `total_price`, `qty_per_item`,\n"
                + "`price_per_item` , `so_price_per_item`, `time_stamp`, `so_status_final`, `so_fk_product`,\n"
                + "t3.inv_stock,\n"
                + "(Select t3.inv_stock  - IFNULL(SUM(qty_per_item), 0)\n"
                + "FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = t3.product_id)\n"
                + "as `available`,\n"
                + "(Select t3.inv_stock  + IFNULL(SUM(po_qty_periItem), 0)\n"
                + " FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = t3.product_id)\n"
                + "as future_po,\n"
                + "(Select IFNULL(SUM(qty_per_item), 0)\n"
                + "FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = t3.product_id)\n"
                + "as so_not_F\n"
                + "FROM `tbl_so` so\n"
                + "inner join `tbl_product_maintenance` t3 on t3.product_id = so.so_fk_product\n"
                + "WHERE so_id='" + set_pk + "'";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setSo_pk(rs.getString("pk"));
                about.setSo_fk(rs.getString("so_id"));
                about.setSo_customer(rs.getString("customer_name"));
                about.setSo_store(rs.getString("store_name"));
                about.setSo_product_name(rs.getString("prod_name"));
                about.setSo_order(rs.getString("type_order"));
                about.setSo_payment(rs.getString("type_payment"));
                about.setSo_status(rs.getString("so_status"));
                about.setSo_ar(rs.getString("current_ar"));
                about.setSo_total_prc(rs.getString("total_price"));
                about.setSo_total_qty(rs.getString("total_qty"));
                about.setSo_per_prc_item(rs.getString("price_per_item"));
                about.setSo_per_qty_item(rs.getString("qty_per_item"));
                about.setSo_price_per_item(rs.getString("so_price_per_item"));
                about.setSo_final_status(rs.getString("so_status_final"));
                about.setTime_stamp(rs.getTimestamp("time_stamp"));
                about.setSo_product_id(rs.getString("so_fk_product"));
                about.setInv_stock(rs.getString("inv_stock"));
                about.setInv_available(rs.getString("available"));
                about.setInv_future_po(rs.getString("future_po"));
                about.setInv_so_not_F(rs.getString("so_not_F"));
                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> update_PO_per_vendor(String set_pk) throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT `pk_po`, `po_id`, `po_vendor_name`, `po_fk_vendor`, `po_product_id`, `po_product_name`, "
//                + "`po_type_order`, `po_type_payment`, `po_delivery_date`, `po_other_discount`, `po_total_discount`,"
//                + " `po_per_discount_amt`, `po_per_discount_percent`, `po_per_discount_after`, `po_price_perItem`, "
//                + "`po_qty_periItem`, `po_total_qty`, `po_total_price`, `time_stamp`, `status` FROM `tbl_po` "
//                + "WHERE po_id='" + set_pk + "'";

//        String query = "SELECT pk_po, po_id, po_vendor_name, po_fk_vendor, po_product_id, po_product_name,po_type_order, "
//                + "po_type_payment,po_delivery_date,po_other_discount, po_total_discount,po_per_discount_amt, "
//                + "po_per_discount_percent, po_per_discount_after, po_price_perItem,po_qty_periItem, po_total_qty, po_total_price, po_total_price_perItem_no_discount, "
//                + "tb_po.time_stamp, tb_po.status, tb_vendor.vendor_name,tb_vendor.vendor_primary_contact,tb_vendor.vendor_contact1,tb_po.po_status_final,tb_po.po_fk_product_id "
//                + "FROM tbl_po tb_po \n"
//                + "join tbl_vendor_maintenance tb_vendor on tb_vendor.pk_vendor = tb_po.po_fk_vendor\n"
//                + "WHERE po_id='" + set_pk + "'";
        String query = "SELECT pk_po, po_id, po_vendor_name, po_fk_vendor, po_product_id, po_product_name,po_type_order, \n"
                + "po_type_payment,po_delivery_date,po_other_discount, po_total_discount,po_per_discount_amt, \n"
                + "po_per_discount_percent, po_per_discount_after, po_price_perItem,po_qty_periItem, po_total_qty, po_total_price, po_total_price_perItem_no_discount, \n"
                + "tb_po.time_stamp, tb_po.status, tb_vendor.vendor_name,tb_vendor.vendor_primary_contact,tb_vendor.vendor_contact1,tb_po.po_status_final,tb_po.po_fk_product_id,t3.inv_stock,(Select t3.inv_stock  - IFNULL(SUM(qty_per_item), 0) \n"
                + " FROM tbl_so WHERE so_status_final = 'not final' AND so_fk_product = po_fk_product_id) as available,\n"
                + " (Select t3.inv_stock  + IFNULL(SUM(po_qty_periItem), 0)\n"
                + "FROM tbl_po WHERE po_status_final = 'not final' AND po_fk_product_id = t3.product_id)\n"
                + "as future_po\n"
                + "FROM tbl_po tb_po \n"
                + "join tbl_vendor_maintenance tb_vendor on tb_vendor.pk_vendor = tb_po.po_fk_vendor\n"
                + "inner join `tbl_product_maintenance` t3 on t3.product_id = po_fk_product_id\n"
                + "WHERE po_id='" + set_pk + "'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPo_pk(rs.getString("pk_po"));
                about.setPo_id(rs.getString("po_id"));
                about.setPo_vendor(rs.getString("po_vendor_name"));
                about.setPo_fk(rs.getString("po_fk_vendor"));
                about.setPo_product_name(rs.getString("po_product_name"));
                about.setPo_order(rs.getString("po_type_order"));
                about.setPo_payment(rs.getString("po_type_payment"));
                about.setPo_total_qty(rs.getString("po_total_qty"));
                about.setPo_total_prc(rs.getString("po_total_price"));
                about.setPo_per_qty_item(rs.getString("po_qty_periItem"));
                about.setPo_per_prc_item(rs.getString("po_price_perItem"));
                about.setPo_total_qty(rs.getString("po_total_qty"));
                about.setPo_delivery(rs.getString("po_delivery_date"));
                about.setPo_D_amount(rs.getString("po_per_discount_amt"));
                about.setPo_D_percent(rs.getString("po_per_discount_percent"));
                about.setPo_A_discount(rs.getString("po_per_discount_after"));
                about.setPo_total_discount(rs.getString("po_total_discount"));
                about.setPo_other_discount(rs.getString("po_other_discount"));
                about.setPo_delivery(rs.getString("po_delivery_date"));
                about.setPo_delivery(rs.getString("po_delivery_date"));
                about.setTime_stamp(rs.getTimestamp("time_stamp"));
                about.setPo_status(rs.getString("status"));
                about.setV_primary_contact(rs.getString("vendor_primary_contact"));
                about.setV_contact1(rs.getString("vendor_contact1"));
                about.setPo_total_prc_perItem(rs.getString("po_total_price_perItem_no_discount"));
                about.setPo_final_status(rs.getString("po_status_final"));
                about.setPo_product_id(rs.getString("po_fk_product_id"));

                about.setInv_stock(rs.getString("inv_stock"));
                about.setInv_available(rs.getString("available"));
                about.setInv_future_po(rs.getString("future_po"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetailspricing_maintenance() throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT distinct t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("pricing_name"));
                about.setPr_id(rs.getString("fk_customer"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetailspricing_maintenance_vendor() throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT distinct t1.fk_vendor, t2.vendor_name FROM `tbl_pricing_maintenance_vendor` t1 inner join `tbl_vendor_maintenance` t2 on t2.pk_vendor = t1.fk_vendor";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();

                about.setPr_name(rs.getString("vendor_name"));
                about.setPr_id(rs.getString("fk_vendor"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetails_SO() throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT so_id, customer_name,store_name,type_order,type_payment,so_status,current_ar,time_stamp,so_status_final from tbl_so where status='active' group by so_id";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();
                about.setSo_fk(rs.getString("so_id"));
                about.setSo_customer(rs.getString("customer_name"));
                about.setSo_store(rs.getString("store_name"));
                about.setSo_order(rs.getString("type_order"));
                about.setSo_payment(rs.getString("type_payment"));
                about.setSo_status(rs.getString("so_status"));
                about.setSo_ar(rs.getString("current_ar"));
                about.setTime_stamp(rs.getTimestamp("time_stamp"));
                about.setSo_final_status(rs.getString("so_status_final"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetails_PO() throws SQLException {
        List<SalesOrderModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT po_id, po_vendor_name,po_type_order,po_type_payment,status,time_stamp,po_status_final from tbl_po where status='active' group by po_id";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel about = new SalesOrderModel();
                about.setPo_fk(rs.getString("po_id"));
                about.setPo_vendor(rs.getString("po_vendor_name"));
                about.setPo_order(rs.getString("po_type_order"));
                about.setPo_payment(rs.getString("po_type_payment"));
                about.setPo_status(rs.getString("status"));
                about.setTime_stamp(rs.getTimestamp("time_stamp"));
                about.setPo_final_status(rs.getString("po_status_final"));

                abouts.add(about);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return abouts;

    }

    public List<SalesOrderModel> getDetailscustomer_maintenance() throws SQLException {
        List<SalesOrderModel> customers = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM `tbl_customer_maintenance`";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel customer = new SalesOrderModel();

                customer.setC_id(rs.getString("pk"));
                customer.setC_store(rs.getString("store"));
                customer.setC_owner(rs.getString("owner"));
                customer.setC_contact(rs.getString("contact"));

                customer.setC_location(rs.getString("location"));
                customer.setC_sub_location(rs.getString("sub_location"));
                customer.setC_pricing_name(rs.getString("pricing_name"));
                customer.setC_ar(rs.getString("ar"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return customers;

    }

    public List<SalesOrderModel> getDetailsVendor_maintenance() throws SQLException {
        List<SalesOrderModel> vendors = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM `tbl_vendor_maintenance` where status='active'";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                SalesOrderModel vendor = new SalesOrderModel();

                vendor.setV_pk_vendor(rs.getString("pk_vendor"));
                vendor.setV_vendor_name(rs.getString("vendor_name"));
                vendor.setV_check_name(rs.getString("vendor_chk_name"));
                vendor.setV_warehouse_loc(rs.getString("vendor_warehouse_location"));
                vendor.setV_office_add(rs.getString("vendor_office_address"));
                vendor.setV_contact1(rs.getString("vendor_contact1"));
                vendor.setV_contact2(rs.getString("vendor_contact2"));
                vendor.setV_contact3(rs.getString("vendor_contact3"));
                vendor.setV_primary_contact(rs.getString("vendor_primary_contact"));
                vendor.setV_secondary_contact(rs.getString("vendor_secondary_contact"));
                vendor.setV_class(rs.getString("vendor_class"));
                vendor.setV_grouping(rs.getString("vendor_grouping"));
                vendor.setV_ap(rs.getString("vendor_ap"));

                vendors.add(vendor);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return vendors;

    }

    public List<SalesOrderModel> getClientData() throws SQLException {
        List<SalesOrderModel> clients = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";
        String query = "SELECT * FROM `tbl_customer_maintenance` where status='active'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
                SalesOrderModel cli = new SalesOrderModel();
                cli.setPrice_fk_product_id(rs.getString("pricing_name"));
                cli.setPrice_fk_customer(rs.getString("pk"));

                clients.add(cli);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return clients;

    }

    //PENDING
    public List<SalesOrderModel> getPOData() throws SQLException {
        List<SalesOrderModel> clients = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";
        String query = "SELECT * FROM `tbl_vendor_maintenance` where status='active'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
                SalesOrderModel cli = new SalesOrderModel();
                cli.setPrice_fk_product_id(rs.getString("vendor_name"));
                cli.setPrice_fk_customer(rs.getString("pk_vendor"));

                clients.add(cli);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return clients;

    }

    public List<SalesOrderModel> getVendorData() throws SQLException {
        List<SalesOrderModel> clients = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";
        String query = "SELECT * FROM `tbl_vendor_maintenance` where status='active'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
                SalesOrderModel cli = new SalesOrderModel();
                cli.setPrice_fk_product_id(rs.getString("vendor_name"));
                cli.setPrice_fk_customer(rs.getString("pk_vendor"));

                clients.add(cli);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return clients;

    }

    public List<SalesOrderModel> get_storenames() throws SQLException {
        List<SalesOrderModel> clients = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";
        String query = "SELECT * FROM `tbl_customer_maintenance`";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
                SalesOrderModel cli = new SalesOrderModel();
                cli.setC_pricing_name(rs.getString("pricing_name"));
                cli.setC_id(rs.getString("pk"));
                cli.setC_store(rs.getString("store"));

                clients.add(cli);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return clients;

    }

    public List<SalesOrderModel> search_if_existed1(String get_pk) throws SQLException {
        List<SalesOrderModel> clients = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";
        String query = "SELECT * FROM `tbl_pricing_maintenance` where fk_customer='" + get_pk + "'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
                SalesOrderModel cli = new SalesOrderModel();
                cli.setPrice_fk_customer(rs.getString("fk_customer"));

                clients.add(cli);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return clients;

    }

    public List<String> test(String get_pk) throws SQLException {
        List<String> clients = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT t1.fk_customer, t2.pricing_name FROM `tbl_pricing_maintenance` t1 inner join `tbl_customer_maintenance` t2 on t2.pk = t1.fk_customer";
        String query = "SELECT * FROM `tbl_pricing_maintenance` where fk_customer='" + get_pk + "'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
//                String cli = new String();
//                cli.setPrice_fk_customer(rs.getString("prod_name"));
                String cli = rs.getString("prod_name");
                clients.add(cli);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return clients;

    }

    public List<String> get_no_workday(String shift_code) throws SQLException {
        String query = "SELECT * FROM tbl_pricing_maintenance where fk_customer='" + shift_code + "'";
        List<String> services = new ArrayList<String>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        Statement statement = conn.createStatement();
        ResultSet rs = null;
        try {
            rs = statement.executeQuery(query);
            while (rs.next()) {
                String service = rs.getString("fk_customer");
//                String title = rs.getString("holiday_description");

                services.add(service);
            }
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(statement);
            pool.freeConnection(conn);
        }
        return services;
    }

    public String search_if_existed(String get_pk) {

        String level = "";
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM `tbl_pricing_maintenance` where fk_customer=?";

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, get_pk);
            rs = ps.executeQuery();
            if (rs.next()) {

                level = rs.getString("fk_customer");

            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {

            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return level;

    }

    public String search_if_existed_vendor(String get_pk) {

        String level = "";
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM `tbl_pricing_maintenance_vendor` where fk_vendor=?";

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, get_pk);
            rs = ps.executeQuery();
            if (rs.next()) {

                level = rs.getString("fk_vendor");

            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {

            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return level;

    }

    public SalesOrderModel get_personal_detail(String id) {
        SalesOrderModel so = new SalesOrderModel();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        try {
            ps = conn.prepareStatement("SELECT * FROM `tbl_customer_maintenance` where pk=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                so.setSo_location(rs.getString("location"));
                so.setSo_ar(rs.getString("ar"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return so;
    }

    public SalesOrderModel get_personal_detail_vendor(String id) {
        SalesOrderModel so = new SalesOrderModel();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        try {
            ps = conn.prepareStatement("SELECT * FROM `tbl_vendor_maintenance` where pk_vendor=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                so.setPo_contact1(rs.getString("vendor_contact1"));
                so.setPo_primary(rs.getString("vendor_primary_contact"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return so;
    }

    public SalesOrderModel get_so_sub_details(String id) {
        SalesOrderModel so = new SalesOrderModel();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        try {
            ps = conn.prepareStatement("SELECT * FROM `tbl_so` WHERE so_id=?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                so.setSo_fk(rs.getString("fk"));
                so.setSo_total_qty(rs.getString("total_qty"));
                so.setSo_total_prc(rs.getString("total_price"));
                so.setSo_remarks(rs.getString("so_remarks"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return so;
    }

}
