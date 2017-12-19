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
public class DAO_Activity {

    PreparedStatement ps = null;
    ResultSet rs;

    public void deleteTeam_by_id(String update_id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String delete_home = "DELETE FROM `tb_activity` WHERE id=?";

        try {
            ps = conn.prepareStatement(delete_home);
            ps.setString(1, update_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void add_Team(BasherModel bash, Part filePart) {

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

        String add_home = "INSERT INTO `tb_activity`(`picture`, `title`, `desc`, `file_name`) VALUES (?,?,?,?)";

        try {
            ps = conn.prepareStatement(add_home);
            ps.setBlob(1, inputStream);
            ps.setString(2, bash.getTitle());
            ps.setString(3, bash.getArticle());
            ps.setString(4, bash.getFile_name());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_Team_by_id(BasherModel bash, String update_id) {

        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_home = "UPDATE `tb_activity` SET `title`=?,`desc`=? WHERE id=?";

        try {
            ps = conn.prepareStatement(update_home);
            ps.setString(1, bash.getTitle());
            ps.setString(2, bash.getArticle());
            ps.setString(3, update_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public void update_Team_by_id_with_picture(BasherModel bash, String update_id, Part filePart) {
        InputStream inputStream = null;

        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            try {
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            } catch (IOException ex) {
                Logger.getLogger(DAO_Home.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();

        String update_home = "UPDATE `tb_activity` SET `picture`=?,`title`=?,`desc`=?,`file_name`=? WHERE id=?";

        try {
            ps = conn.prepareStatement(update_home);
            ps.setBlob(1, inputStream);
            ps.setString(2, bash.getTitle());
            ps.setString(3, bash.getArticle());
            ps.setString(4, bash.getFile_name());
            ps.setString(5, update_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }

    }

    public List<BasherModel> getDetailsForTeam() throws SQLException {
        List<BasherModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT `id`, `file_name`, `title`, `desc`, `picture`, `date_modified` FROM `tb_activity`";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel about = new BasherModel();

                about.setId(rs.getString("id"));
//                about.(rs.getTimestamp("picture"));
                about.setTitle(rs.getString("title"));
                about.setArticle(rs.getString("desc"));
                about.setDate_modified(rs.getTimestamp("date_modified"));
                about.setFile_name(rs.getString("file_name"));

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

    public List<BasherModel> getDetailsForActivity_with_offset(String off_value) throws SQLException {
        List<BasherModel> abouts = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT `id`, `file_name`, `title`, `desc`, `picture`, `date_modified` FROM `tb_activity` order by date_modified desc LIMIT 5 OFFSET " + off_value + "";

        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel about = new BasherModel();

                about.setId(rs.getString("id"));
//                about.(rs.getTimestamp("picture"));
                about.setTitle(rs.getString("title"));
                about.setDesc(rs.getString("desc"));
                about.setDate_modified(rs.getTimestamp("date_modified"));
                about.setFile_name(rs.getString("file_name"));

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

    public List<BasherModel> getDetailsForActivity(String title) throws SQLException {
        List<BasherModel> blogs = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT * FROM blog where title ='Story number 2'";
        String query = "SELECT * FROM `tb_activity` WHERE title ='" + title + "'";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel blog = new BasherModel();

                blog.setId(rs.getString("id"));
                blog.setTitle(rs.getString("title"));
                blog.setFile_name(rs.getString("file_name"));
                blog.setDesc(rs.getString("desc"));
                blog.setDate_modified(rs.getTimestamp("date_modified"));

                blogs.add(blog);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return blogs;

    }
    
    
    public List<BasherModel> getDetailsForActivity_on_load() throws SQLException {
        List<BasherModel> blogs = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
//        String query = "SELECT * FROM blog where title ='Story number 2'";
        String query = "SELECT * FROM `tb_activity` order by date_modified desc limit 1 ";
        Statement statement = conn.createStatement();

        try {
            rs = statement.executeQuery(query);

            while (rs.next()) {
                BasherModel blog = new BasherModel();

                blog.setId(rs.getString("id"));
                blog.setTitle(rs.getString("title"));
                blog.setFile_name(rs.getString("file_name"));
                blog.setDesc(rs.getString("desc"));
                blog.setDate_modified(rs.getTimestamp("date_modified"));

                blogs.add(blog);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return blogs;

    }
}
