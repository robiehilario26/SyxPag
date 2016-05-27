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
public class DAO_About_links {
    
    PreparedStatement ps = null;
    ResultSet rs;
    
    public void add_About_links(BasherModel bash, Part filePart) {
        
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
        
        String sql = "INSERT INTO `about_links`( `title`, `picture`, `link`)  VALUES (?,?,?)";
        
        try {
            ps = conn.prepareStatement(sql);
            
            ps.setString(1, bash.getTitle());
            ps.setBlob(2, inputStream);
            ps.setString(3, bash.getLink());
            
            ps.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e.toString());
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        
    }
    
    public void update_About_links(BasherModel bash, Part filePart) {
        
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
        
        String sql = "UPDATE `about_links` SET `title`=?,`picture`=?,`link`=? WHERE `id` =?";
        
        try {
            ps = conn.prepareStatement(sql);
            
            ps.setString(1, bash.getTitle());
            ps.setBlob(2, inputStream);
            ps.setString(3, bash.getLink());
            ps.setInt(4, bash.getIndicator());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        
    }
    
    public void update_About_links_2(BasherModel bash) {
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        
        String sql = "UPDATE `about_links` SET `title`=?,`link`=? WHERE `id` =?";
        
        try {
            ps = conn.prepareStatement(sql);
            
            ps.setString(1, bash.getTitle());
            ps.setString(2, bash.getLink());
            ps.setInt(3, bash.getIndicator());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        
    }
    
    public void delete_About_links_by_id(int id) {
        
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        
        String delete_home = "DELETE FROM `about_links` WHERE id=?";
        
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
    
    public List<BasherModel> getDetailsFor_About_links() throws SQLException {
        List<BasherModel> about_links = new ArrayList<>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        String query = "SELECT `id`, `title`, `link` FROM `about_links` ";
        
        Statement statement = conn.createStatement();
        
        try {
            rs = statement.executeQuery(query);
            
            while (rs.next()) {
                BasherModel about_link = new BasherModel();
                about_link.setId(rs.getString("id"));
                about_link.setTitle(rs.getString("title"));
                about_link.setLink(rs.getString("link"));
                
                about_links.add(about_link);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
        return about_links;
        
    }
    
}
