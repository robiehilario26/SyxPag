/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Query.Statement;

/**
 *
 * @author user
 */
public class Query {

    //queries for home
    String insert_home = " INSERT INTO `home`(`id`, `title`, `article`, `picture`, `date_modified`) VALUES (?,?,?,?,?)";
    String update_home = " UPDATE `home` SET `id`=?,`title`=?,`article`=?,`picture`=?,`date_modified`=? WHERE 1";
    String delete_home = "DELETE FROM `home` WHERE 1";

    //queries for blog
    String insert_blog = "INSERT INTO `blog`(`id`, `title`, `video_link`, `article`, `date_modified`) VALUES (?,?,?,?,?)";
    String update_blog = "UPDATE `blog` SET `id`=?,`title`=?,`video_link`=?,`article`=?,`date_modified`=? WHERE 1";
    String delete_blog = "DELETE FROM `blog` WHERE 1";

    //queries for about_links
    String insert_about_links = "INSERT INTO `about_links`(`id`, `title`, `logo`, `link`) VALUES (?,?,?,?)";
    String update_about_links = "UPDATE `about_links` SET `id`=?,`title`=?,`logo`=?,`link`=? WHERE 1";
    String delete_about_links = "DELETE FROM `about_links` WHERE 1";

    //queries for contact_us
    String insert_contact_us = "INSERT INTO `contact_us`(`id`, `title`, `contact_info`, `date_modified`) VALUES (?,?,?,?)";
    String update_contact_us = "UPDATE `contact_us` SET `id`=?,`title`=?,`contact_info`=?,`date_modified`=? WHERE 1";
    String delete_contact_us = "DELETE FROM `contact_us` WHERE 1";

    // queries for file
    String insert_file = "INSERT INTO `file`(`id`, `file`, `file_name`, `size`, `date_modified`) VALUES (?,?,?,?,?)";
    String update_file = "UPDATE `file` SET `id`=?,`file`=?,`file_name`=?,`size`=?,`date_modified`=? WHERE 1";
    String delete_file = "DELETE FROM `file` WHERE 1";

    //queries for about
    String insert_about = "INSERT INTO `about`(`id`, `title`, `article`, `date_modified`) VALUES (?,?,?,?)";
    String update_about = "UPDATE `about` SET `id`=?,`title`=?,`article`=?,`date_modified`=? WHERE 1";
    String delete_about = "DELETE FROM `about` WHERE 1";

    //queries for gallery 
    String insert_gallery = "INSERT INTO `gallery`(`id`, `title`, `desc`, `date_modified`) VALUES (?,?,?,?)";
    String update_gallery = "UPDATE `gallery` SET `id`=?,`title`=?,`desc`=?,`date_modified`=? WHERE 1";
    String delete_gallery = "DELETE FROM `gallery` WHERE 1";

    //queries for program 
    String insert_program = "INSERT INTO `program`(`id`, `title`, `article`, `date_modified`, `Category`) VALUES (?,?,?,?,?)";
    String update_program = "UPDATE `program` SET `id`=[value-1],`title`=?,`article`=?,`date_modified`=?,`Category`=? WHERE 1";
    String delete_program = "DELETE FROM `program` WHERE 1";

    //queries for team
    String insert_team = "INSERT INTO `team`(`id`, `title`, `desc`, `picture`, `date_modified`) VALUES (?,?,?,?,?)";
    String update_team = "UPDATE `team` SET `id`=?,`title`=?,`desc`=?,`picture`=?,`date_modified`=? WHERE 1";
    String delete_team = "DELETE FROM `team` WHERE 1";

    //queries for akcnowledgement
    String insert_akcnow = "INSERT INTO `acknowledgement`(`id`, `Title`, `desc`, `date_modified`) VALUES (?,?,?,?)";
    String update_acknow = "UPDATE `acknowledgement` SET `id`=?,`Title`=?,`desc`=?,`date_modified`=? WHERE 1";
    String delete_acknow = "DELETE FROM `acknowledgement` WHERE 1";

}
