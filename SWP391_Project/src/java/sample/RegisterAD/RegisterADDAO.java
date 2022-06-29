/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.RegisterAD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.term.SemesterDTO;
import sample.utils.DBUtils;

/**
 *
 * @author Hoang Tam
 */
public class RegisterADDAO {

    private static final String ADDREGISTERFORM = "Insert into tblRegisterNarrow (majorID, narrowID, \n"
            + "semesterID, importDate, usingDate, minQuantity, status) "
            + "VALUES(?, ?, ?, ?, ?, 20, 'true' )";
    private static final String GETREGISTERFORMBYTERM = "SELECT registerID, majorID, narrowID, semesterID \n"
            + "FROM tblRegisterNarrow \n"
            + "WHERE semesterID = ? AND status = 'true'";

    public boolean createSemester(RegisterADDTO registerAD) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(ADDREGISTERFORM);
                ptm.setString(1, registerAD.getMajorID());
                ptm.setString(2, registerAD.getNarrowID());
                ptm.setString(3, registerAD.getSemesterID());
                ptm.setTimestamp(4, registerAD.getImportDate());
                ptm.setTimestamp(5, registerAD.getUsingDate());
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

    public List<RegisterADDTO> getListSemester(String semester) throws SQLException {
        List<RegisterADDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GETREGISTERFORMBYTERM);
                ptm.setString(1, semester);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int registerID = rs.getInt("registerID");
                    String majorID = rs.getString("majorID");
                    String narrowID = rs.getString("narrowID");
                    String semesterID = rs.getString("semesterID");
                    list.add(new RegisterADDTO(registerID, majorID, narrowID, semesterID, null, null, 0));
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
        return list;
    }

}
