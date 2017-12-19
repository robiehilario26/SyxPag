/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.DB.Util.ConnectionPool;
import com.DB.Util.DBUtil;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
public class DAO_User {

    PreparedStatement ps = null;
    ResultSet rs;

    public void add_User(BasherModel bash, Part filePart) {

        InputStream inputStream = null;

        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            try {
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            } catch (IOException ex) {
                Logger.getLogger(DAO_Gallery.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String sql = "INSERT INTO `tb_user_admin`(`user_name`, `passwod`, `l_name`, `f_name`, `picture`, `gender`) VALUES (?,?,?,?,?,?)";

        try {
            ps = conn.prepareStatement(sql);

            ps.setString(1, bash.getUsername());
            ps.setString(2, bash.getPassword());
            ps.setString(3, bash.getLname());
            ps.setString(4, bash.getFname());
            ps.setBlob(5, inputStream);
            ps.setString(6, bash.getGender());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.toString());
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_User(BasherModel bash, Part filePart) {

        InputStream inputStream = null;

        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            try {
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            } catch (IOException ex) {
                Logger.getLogger(DAO_Gallery.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String sql = "UPDATE `tb_user_admin` SET `user_name`=?,`passwod`=?,`l_name`=?,`f_name`=?,`picture`=?,`gender`=? WHERE `id`=?";

        try {
            ps = conn.prepareStatement(sql);

            ps.setString(1, bash.getUsername());
            ps.setString(2, bash.getPassword());
            ps.setString(3, bash.getLname());
            ps.setString(4, bash.getFname());
            ps.setBlob(5, inputStream);
            ps.setString(6, bash.getGender());
            ps.setInt(7, bash.getIndicator());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_User_v_2(BasherModel bash) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String sql = "UPDATE `tb_user_admin` SET `user_name`=?,`passwod`=?,`l_name`=?,`f_name`=?,`gender`=? WHERE `id`=?";

        try {
            ps = conn.prepareStatement(sql);

            ps.setString(1, bash.getUsername());
            ps.setString(2, bash.getPassword());
            ps.setString(3, bash.getLname());
            ps.setString(4, bash.getFname());
            ps.setString(5, bash.getGender());
            ps.setInt(6, bash.getIndicator());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void deleteUser_by_id(int id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_home = "DELETE FROM `tb_user_admin` WHERE id=?";

        try {
            ps = conn.prepareStatement(delete_home);
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

    public List<BasherModel> getDetailsForUsers() throws SQLException {
        List<BasherModel> users = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT `id`, `user_name`, `passwod`, `l_name`, `f_name`, `gender` FROM `tb_user_admin`";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel user = new BasherModel();
                user.setId(rs.getString("id"));
                user.setFname(rs.getString("user_name"));
                user.setLname(rs.getString("passwod"));
                user.setPassword(rs.getString("l_name"));
                user.setUsername(rs.getString("f_name"));
                user.setGender(rs.getString("gender"));

                users.add(user);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return users;

    }

}
