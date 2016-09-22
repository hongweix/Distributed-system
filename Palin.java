/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hongwei Xie
 * @version 1.2
 * @since Feb 2, 2016
 */
@WebServlet(name = "Palin",
        urlPatterns = {"/Palin"})
public class Palin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
        String ua = request.getHeader("User-Agent");
        boolean mobile;
        // prepare the appropriate DOCTYPE for the view pages
        if (ua != null && ((ua.indexOf("Android") != -1) || (ua.indexOf("iPhone") != -1))) {
            mobile = true;
            /*
             * This is the latest XHTML Mobile doctype. To see the difference it
             * makes, comment it out so that a default desktop doctype is used
             * and view on an Android or iPhone.
             */
            request.setAttribute("doctype", "<!DOCTYPE html PUBLIC \"-//WAPFORUM//DTD XHTML Mobile 1.2//EN\" \"http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd\">");
        } else {
            mobile = false;
            request.setAttribute("doctype", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
        }
        /* transfer page is result page */
        String nextView="result.jsp";
        /* construct returnvalue */
        String returnvalue = "";
        /* get text from input */
        String text = request.getParameter("text");
        boolean palintrue = false;
        /* if text is null or length is 1 then it is palindrome */
        if(text == null || text.length() == 1){
            palintrue = true;
        }
        else{
           /* construct an arraylist to store letter or digit */
           ArrayList<Character> list = new ArrayList<Character>();
           /* if current char is letter or digit then add into the array list */
           for(int i = 0;i < text.length();i++){
            if(Character.isLetter(text.charAt(i))||Character.isDigit(text.charAt(i))){
                list.add(Character.toUpperCase(text.charAt(i)));
            }
        } 
           /* i is head pointer, j is tail pointer */
           int i,j;
           /* check from head and tail to see if char is the same */
           for(i = 0,j = list.size()-1;i < j;i++, j--){
            if(list.get(i)==list.get(j)){
                continue;
            }
            else{
                break;
            }
        }
           /* if i = j or i = j+1, then it is palindrome */
           if(i == j || i == j+1 ){
            palintrue = true;
        }
        }
        /* assign returnvalue */
        if(palintrue){
            returnvalue = "Palindrome";
        }
        else{
            returnvalue = "Not Palindrome";
        }
        /* set returnvalue */
        request.setAttribute("returnvalue", returnvalue);
        RequestDispatcher view = request.getRequestDispatcher(nextView);
        view.forward(request, response);
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
