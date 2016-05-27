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
public class DAO_Program {

    //queries for program 
    String insert_program = "INSERT INTO `program`(`id`, `title`, `article`, `date_modified`, `Category`) VALUES (?,?,?,?,?)";
    String update_program = "UPDATE `program` SET `id`=[value-1],`title`=?,`article`=?,`date_modified`=?,`Category`=? WHERE 1";
    String delete_program = "DELETE FROM `program` WHERE 1";

    PreparedStatement ps = null;
    ResultSet rs;

    public void insertProgram(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String insert_program = "INSERT INTO `program`( `title`, `article`, `Category`) VALUES (?,?,?)";

        try {
            ps = conn.prepareStatement(insert_program);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getArticle());
            ps.setString(3, bm.getCategory());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void updateProgram(BasherModel bm) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_program = "UPDATE `program` SET `title`=?,`article`=?,`date_modified`=?,`Category`=? WHERE  `id`=?";

        try {
            ps = conn.prepareStatement(update_program);
            ps.setString(1, bm.getTitle());
            ps.setString(2, bm.getArticle());
            ps.setString(3, bm.getCategory());
            ps.setTimestamp(4, DateUtil.getCurrentTimeStamp());
            ps.setInt(5, bm.getIndicator());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void deleteProgram(int id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_about = "DELETE FROM `program` WHERE id =?";

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

    public List<BasherModel> getDetailsForProgram() throws SQLException {
        List<BasherModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT * FROM program";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel about = new BasherModel();

                about.setId(rs.getString("id"));
                about.setTitle(rs.getString("title"));
                about.setArticle(rs.getString("article"));
                about.setDate_modified(rs.getTimestamp("date_modified"));

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

}
