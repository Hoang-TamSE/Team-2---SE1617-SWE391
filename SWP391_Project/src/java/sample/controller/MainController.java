/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hoang Tam
 */
@MultipartConfig
public class MainController extends HttpServlet {

    private static final String ERROR="error.jsp";
    private static final String LOGIN="Login";
    private static final String LOGIN_CONTROLLER="LoginController";
    private static final String SEARCH="Search";
    private static final String SEARCH_CONTROLLER="SearchStudentController";
    private static final String DELETESTUDENT="deleteStudent";
    private static final String DELETE_CONTROLLER="DeleteStudentController";
    private static final String UPDATESTUDENT="UpdateStudent";
    private static final String UPDATESTUDENT_CONTROLLER="UpdateStudentController";
    private static final String PAGEUPDATESTUDENT="pageUpdateStudent";
    private static final String PAGEUPDATESTUDENT_CONTROLLER="PageUpdateStudentController";
    private static final String LOGOUT="Logout";
    private static final String LOGOUT_CONTROLLER="LogoutController";
    private static final String ADDSTUDENT="AddStudent";
    private static final String ADDSTUDENT_CONTROLLER="AddStudentController";
    private static final String VIEW="View";
    private static final String VIEW_CONTROLLER="viewCart.jsp";
    private static final String REMOVE="Remove";
    private static final String REMOVE_CONTROLLER="RemoveController";
    private static final String EDIT="Edit";
    private static final String EDIT_CONTROLLER="EditController";
    private static final String SEARCHFORUSER="SearchForUser";
    private static final String SEARCHFORUSER_CONTROLLER="SearchForUserController";
    private static final String DETAIL="Detail";
    private static final String DETAIL_CONTROLLER="DetailController";
    private static final String ADDTOCART="AddToCart";
    private static final String ADDTOCART_CONTROLLER="AddToCartController";
    private static final String VIEWCART="ViewCart";
    private static final String VIEWCART_CONTROLLER="ViewCartController";
    private static final String CHECKOUT="CheckOut";
    private static final String CHECKOUT_CONTROLLER="CheckOutController";
    private static final String SENDMAIL="SendMail";
    private static final String SENDMAIL_CONTROLLER="SendMailController";
    private static final String UPLOADFILEEXCEL="Upload";
    private static final String UPLOADFILEEXCEL_CONTROLLER="UploadFileExcelController";
    
    private static final String ADDSUPPORTER="AddSupporter";
    private static final String ADDSUPPORTER_CONTROLLER="AddSupporterController";
    private static final String SEARCHSUPPORTER="SearchSupporter";
    private static final String SEARCHSUPPORTER_CONTROLLER="SearchSupporterController";
    private static final String DELETESUPPORTER="DeleteSupporter";
    private static final String DELETESUPPORTER_CONTROLLER="DeleteSupporterController";
    private static final String UPDATESUPPORTER="UpdateSupporter";
    private static final String UPDATESUPPORTER_CONTROLLER="UpdateSupporterController";
    private static final String PAGEUPDATESUPPORTER="PageUpdateSupporter";
    private static final String PAGEUPDATESUPPORTER_CONTROLLER="PageUpdateSupporterController";
    
    private static final String ADDMAJOR="AddMajor";
    private static final String ADDMAJOR_CONTROLLER="AddMajorController";
    private static final String SEARCHMAJOR="SearchMajor";
    private static final String SEARCHMAJOR_CONTROLLER="SearchMajorController";
    private static final String DELETEMAJOR="DeleteMajor";
    private static final String DELETEMAJOR_CONTROLLER="DeleteMajorController";
    private static final String UPDATEMAJOR="UpdateMajor";
    private static final String UPDATEMAJOR_CONTROLLER="UpdateMajorController";
    private static final String PAGEUPDATEMAJOR="PageUpdateMajor";
    private static final String PAGEUPDATEMAJOR_CONTROLLER="PageUpdateMajorController";
    
    private static final String ADDTERM="AddTerm";
    private static final String ADDTERM_CONTROLLER="AddTermController";
    private static final String SEARCHTERM="SearchTerm";
    private static final String SEARCHTERM_CONTROLLER="SearchTermController";
    private static final String DELETETERM="DeleteTerm";
    private static final String DELETETERM_CONTROLLER="DeleteTermController";
    private static final String UPDATETERM="UpdateTerm";
    private static final String UPDATETERM_CONTROLLER="UpdateTermController";
    private static final String PAGEUPDATETERM="PageUpdateTerm";
    private static final String PAGEUPDATETERM_CONTROLLER="PageUpdateTermController";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String action= request.getParameter("action");
            if(LOGIN.equals(action)){
                url=LOGIN_CONTROLLER;
            }else if(SEARCH.equals(action)){
                    url= SEARCH_CONTROLLER;
            
            }else if(DELETESTUDENT.equals(action)){
                    url= DELETE_CONTROLLER;
            
            }else if(UPDATESTUDENT.equals(action)){
                    url= UPDATESTUDENT_CONTROLLER;
            }
            else if(PAGEUPDATESTUDENT.equals(action)){
                    url= PAGEUPDATESTUDENT_CONTROLLER;
            }
            else if(UPLOADFILEEXCEL.equals(action)){
                    url= UPLOADFILEEXCEL_CONTROLLER;
            }
            else if(LOGOUT.equals(action)){
                    url= LOGOUT_CONTROLLER;
            }
            else if(ADDSTUDENT.equals(action)){
                    url= ADDSTUDENT_CONTROLLER;
            }
            
            else if(VIEW.equals(action)){
                    url= VIEW_CONTROLLER;
            }
            else if(REMOVE.equals(action)){
                    url= REMOVE_CONTROLLER;
            }
            else if(EDIT.equals(action)){
                    url= EDIT_CONTROLLER;
            }
            else if(SEARCHFORUSER.equals(action)){
                    url= SEARCHFORUSER_CONTROLLER;
            }
            else if(DETAIL.equals(action)){
                    url= DETAIL_CONTROLLER;
            }
            else if(ADDTOCART.equals(action)){
                    url= ADDTOCART_CONTROLLER;
            }
            else if(VIEWCART.equals(action)){
                    url= VIEWCART_CONTROLLER;
            }
            else if(CHECKOUT.equals(action)){
                    url= CHECKOUT_CONTROLLER;
            }
            else if(SENDMAIL.equals(action)){
                    url= SENDMAIL_CONTROLLER;
            }
            else if(ADDSUPPORTER.equals(action)){
                    url= ADDSUPPORTER_CONTROLLER;
            }
            else if(SEARCHSUPPORTER.equals(action)){
                    url= SEARCHSUPPORTER_CONTROLLER;
            }
            else if(UPDATESUPPORTER.equals(action)){
                    url= UPDATESUPPORTER_CONTROLLER;
            }
            else if(PAGEUPDATESUPPORTER.equals(action)){
                    url= PAGEUPDATESUPPORTER_CONTROLLER;
            }
            else if(DELETESUPPORTER.equals(action)){
                    url= DELETESUPPORTER_CONTROLLER;
            }
            else if(ADDMAJOR.equals(action)){
                    url= ADDMAJOR_CONTROLLER;
            }
            else if(SEARCHMAJOR.equals(action)){
                    url= SEARCHMAJOR_CONTROLLER;
            }
            else if(DELETEMAJOR.equals(action)){
                    url= DELETEMAJOR_CONTROLLER;
            }
            else if(UPDATEMAJOR.equals(action)){
                    url= UPDATEMAJOR_CONTROLLER;
            }
            else if(PAGEUPDATEMAJOR.equals(action)){
                    url= PAGEUPDATEMAJOR_CONTROLLER;
            }
            else if(ADDTERM.equals(action)){
                    url= ADDTERM_CONTROLLER;
            }
            else if(SEARCHTERM.equals(action)){
                    url= SEARCHTERM_CONTROLLER;
            }
            else if(DELETETERM.equals(action)){
                    url= DELETETERM_CONTROLLER;
            }
            else if(UPDATETERM.equals(action)){
                    url= UPDATETERM_CONTROLLER;
            }
            else if(PAGEUPDATETERM.equals(action)){
                    url= PAGEUPDATETERM_CONTROLLER;
            }
        } catch (Exception e) {
            log("Error at MainController: "+ e.toString());
        }finally{
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
