/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.Mess;

import java.sql.Timestamp;

/**
 *
 * @author Hoang Tam
 */
public class MessDTO {
    private int messID;
    private String messText;
    private String messTitle;
    private Timestamp messDate;

    public MessDTO() {
        this.messID = 0;
        this.messText = "";
        this.messTitle = "";
        this.messDate = null;
    }

    public MessDTO(int messID, String messText, String messTitle, Timestamp messDate) {
        this.messID = messID;
        this.messText = messText;
        this.messTitle = messTitle;
        this.messDate = messDate;
    }

    public int getMessID() {
        return messID;
    }

    public void setMessID(int messID) {
        this.messID = messID;
    }

    public String getMessText() {
        return messText;
    }

    public void setMessText(String messText) {
        this.messText = messText;
    }

    public String getMessTitle() {
        return messTitle;
    }

    public void setMessTitle(String messTitle) {
        this.messTitle = messTitle;
    }

    public Timestamp getMessDate() {
        return messDate;
    }

    public void setMessDate(Timestamp messDate) {
        this.messDate = messDate;
    }
    
}
