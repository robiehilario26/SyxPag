/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import com.DB.Util.DateUtil;
import com.basher.model.BasherModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class DAO_Contact_us {

    PreparedStatement ps = null;
    ResultSet rs;

    //queries for contact_us
    String delete_contact_us = "DELETE FROM `contact_us` WHERE 1";

    public void insertContact(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_contact_us = "INSERT INTO `contact_us`( `title`, `contact_info`) VALUES (?,?)";

        try {
            ps = conn.prepareStatement(insert_contact_us);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getContact_info());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updateContact(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_contact_us = "UPDATE `contact_us` SET `title`=?,`contact_info`=?,`date_modified`=? WHERE id=?";

        try {
            ps = conn.prepareStatement(update_contact_us);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getContact_info());
            ps.setTimestamp(3, DateUtil.getCurrentTimeStamp());
            ps.setInt(4, bm.getIndicator());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void deleteContact(int id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_about = "DELETE FROM `contact_us` WHERE id =?";

        try {
            ps = conn.prepareStatement(delete_about);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public List<BasherModel> getDetailsForContact() throws SQLException {
        List<BasherModel> contacts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM contact_us";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel contact = new BasherModel();

                contact.setId(rs.getString("id"));
                contact.setTitle(rs.getString("title"));
                contact.setContact_info(rs.getString("contact_info"));
                contact.setDate_modified(rs.getTimestamp("date_modified"));

                contacts.add(contact);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return contacts;

    }

}
