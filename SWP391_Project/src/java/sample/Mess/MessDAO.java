/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.Mess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sample.RegisterAD.RegisterADDTO;
import sample.major.MajorDTO;
import sample.utils.DBUtils;

/**
 *
 * @author Hoang Tam
 */
public class MessDAO {

    private String CreateMess = "Insert into tblMess (messText, messTitle, messDate, status) \n"
            + "VALUES(?, ?, ?, 'true')";
    private String CreateSend = "Insert into tblSend(userID, messID, status) \n"
            + "VALUES(?, ?, 'true')";
    private String CreateReceive = "Insert into tblReceive(userID, messID, status) \n"
            + "VALUES(?, ?, 'true')";
    private String GetRandSP = "SELECT TOP 1 userID \n"
            + "FROM   tblSupporter  \n"
            + "WHERE  majorID = ? \n"
            + "ORDER  BY NEWID();";
    private String GetLastMessID = "SELECT TOP 1 messID FROM tblMess ORDER BY messID DESC";
    public boolean createMess(MessDTO mess) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CreateMess);
                ptm.setString(1, mess.getMessText());
                ptm.setString(2, mess.getMessTitle());
                ptm.setTimestamp(3, mess.getMessDate());
                check = ptm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    public boolean createSend(String userID, int messID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CreateSend);
                ptm.setString(1, userID);
                ptm.setInt(2, messID);
                check = ptm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    public boolean createReceive(String userID, int messID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CreateReceive);
                ptm.setString(1, userID);
                ptm.setInt(2, messID);
                check = ptm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }
    
    public int getLastMessID() throws SQLException {
        int messID = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GetLastMessID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                     messID = rs.getInt("messID");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return messID;
    }
    public String getSupporterID(String majorID) throws SQLException {
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        String userID = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GetRandSP);
                ptm.setString(1, majorID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                     userID = rs.getString("userID");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return userID;
    }
}
 