/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.RegisterAD.RegisterADERROR;
import sample.major.MajorDAO;
import sample.major.MajorDTO;
import sample.narrow.NarrowDAO;
import sample.narrow.NarrowDTO;
import sample.term.SemesterDAO;
import sample.term.SemesterDTO;
import sample.validation.Validation;

/**
 *
 * @author Hoang Tam
 */
@WebServlet(name = "MakeFormRegisterController", urlPatterns = {"/MakeFormRegisterController"})
public class MakeFormRegisterController extends HttpServlet {

    private static final String ERROR = "RegisterAD.jsp";
    private static final String SUCCESS = "RegisterAD.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String startDateString = request.getParameter("startDate");
            String endDateString = request.getParameter("endDate");
            Timestamp startDate = Validation.dateStringToTimestamp(startDateString);
            Timestamp endDate = Validation.dateStringToTimestamp(endDateString);
            Timestamp currentDate = Validation.takeCurrentDate();
            boolean checkValid = true;
            RegisterADERROR error = new RegisterADERROR();
            if (Validation.compareDate(startDate, currentDate) == -1) {
                error.setImportDate("The start date need greater than or equal current date!!");
                checkValid = false;
            }
            if (Validation.compareDate(endDate, startDate) == -1 || Validation.compareDate(endDate, startDate) == 0) {
                error.setUsingDate("The end date need greater than  start date!!");
                checkValid = false;
            }
            if (checkValid) {
                MajorDAO majorDao = new MajorDAO();
                List<MajorDTO> listMajor = majorDao.getListMajor("");
                String mjID = "";
                String a[] = null;
                for (MajorDTO major : listMajor) {
                    mjID = major.getMajorID();
                    a = request.getParameterValues(mjID);
                    for (String nwID : a) {

                    }
                }
                int l = a.length;

                if (listMajor.size() > 0) {

                    url = SUCCESS;
                }
            } else {
                request.setAttribute("ERROR", error);
                MajorDAO majorDao = new MajorDAO();
                List<MajorDTO> listMajor = majorDao.getListMajor("");
                NarrowDAO narrowDao = new NarrowDAO();
                List<NarrowDTO> listNarrow = narrowDao.getListNarrow("");
                SemesterDAO semesterDao = new SemesterDAO();
                List<SemesterDTO> listSemester = semesterDao.getListSemester("");
                request.setAttribute("LIST_MAJOR", listMajor);
                request.setAttribute("LIST_NARROW", listNarrow);
                request.setAttribute("LIST_SEMESTER", listSemester);
            }
        } catch (Exception e) {
            log("error at DeleteController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
