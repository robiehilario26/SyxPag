/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basher.model;

import java.sql.Blob;
import java.sql.Timestamp;

/**
 *
 * @author user
 */
public class BasherModel {

    private String id;
    private String title;
    private String article;
    private String text;
    private String video_link;
    private String link;
    private String contact_info;
    private String desc;
    private String category;
    private Timestamp date_modified;

    private int indicator;

    private String file_name;
    private Blob picture;

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the article
     */
    public String getArticle() {
        return article;
    }

    /**
     * @param article the article to set
     */
    public void setArticle(String article) {
        this.article = article;
    }

    /**
     * @return the text
     */
    public String getText() {
        return text;
    }

    /**
     * @param text the text to set
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * @return the video_link
     */
    public String getVideo_link() {
        return video_link;
    }

    /**
     * @param video_link the video_link to set
     */
    public void setVideo_link(String video_link) {
        this.video_link = video_link;
    }

    /**
     * @return the link
     */
    public String getLink() {
        return link;
    }

    /**
     * @param link the link to set
     */
    public void setLink(String link) {
        this.link = link;
    }

    /**
     * @return the contact_info
     */
    public String getContact_info() {
        return contact_info;
    }

    /**
     * @param contact_info the contact_info to set
     */
    public void setContact_info(String contact_info) {
        this.contact_info = contact_info;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the date_modified
     */
    public Timestamp getDate_modified() {
        return date_modified;
    }

    /**
     * @param date_modified the date_modified to set
     */
    public void setDate_modified(Timestamp date_modified) {
        this.date_modified = date_modified;
    }

    /**
     * <<<<<<< HEAD
     *
     * @return the indicator
     */
    public int getIndicator() {
        return indicator;
    }

    /**
     * @param indicator the indicator to set
     */
    public void setIndicator(int indicator) {
        this.indicator = indicator;

    }

    public String getFile_name() {
        return file_name;
    }

    /**
     * @param file_name the file_name to set
     */
    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    /**
     * @return the picture
     */
    public Blob getPicture() {
        return picture;
    }

    /**
     * @param picture the picture to set
     */
    public void setPicture(Blob picture) {
        this.picture = picture;

    }

}
