/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.utility.user;

import com.DAO.DAO_User;
import com.basher.model.BasherModel;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
@WebServlet(name = "DeleteUser", urlPatterns = {"/DeleteUser"})
public class DeleteUser extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       
        String action_taken = request.getParameter("action_taken");
        String update_id = request.getParameter("update_id");

        System.out.println(action_taken);
        System.out.println(update_id);

      
        DAO_User dao = new DAO_User();
       if (action_taken.equalsIgnoreCase("deleted")) {

            int id = Integer.parseInt(update_id);
           
            dao.deleteUser_by_id(id);

        }

    }

}
