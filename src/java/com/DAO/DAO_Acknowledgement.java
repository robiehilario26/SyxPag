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
public class DAO_Acknowledgement {

    PreparedStatement ps = null;
    ResultSet rs;

    public void insertAcknow(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_acknowledgement = "INSERT INTO `acknowledgement`( `title`, `article`) VALUES (?,?)";

        try {
            ps = conn.prepareStatement(insert_acknowledgement);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getArticle());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updateAcknow(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_acknowledgement = "UPDATE `acknowledgement` SET `title`=?,`article`=?,`date_modified`=? WHERE id =? ";

        try {
            ps = conn.prepareStatement(update_acknowledgement);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getArticle());
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

    public void deleteAcknow(int id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_acknowledgement = "DELETE FROM `acknowledgement` WHERE id =?";

        try {
            ps = conn.prepareStatement(delete_acknowledgement);
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

    public List<BasherModel> getDetailsForAcknow() throws SQLException {
        List<BasherModel> acknowledgements = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM acknowledgement";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel acknowledgement = new BasherModel();

                acknowledgement.setId(rs.getString("id"));
                acknowledgement.setTitle(rs.getString("title"));
                acknowledgement.setArticle(rs.getString("article"));
                acknowledgement.setDate_modified(rs.getTimestamp("date_modified"));

                acknowledgements.add(acknowledgement);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return acknowledgements;

    }

}
