/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigInteger;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Hongwei Xie
 * @version 1.2
 * @since Feb 1, 2016
 */
@WebServlet(name = "BigCalc",
        urlPatterns = {"/BigCalc"})
public class BigCalc extends HttpServlet {

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
            /* Assign value from user input */
            String nextView="output.jsp";
            String x = request.getParameter("integerX");
            String y = request.getParameter("integerY");
            String operation = request.getParameter("operator");
            /* boolean value to check rightness of input. */
            boolean right = true;
            /* check if two input are both integer. */
            for (int i = 0; i < x.length(); i++) {
                if (!Character.isDigit(x.charAt(i))) {
                    right = false;
                }
            }
            for (int i = 0; i < y.length(); i++) {
                if (!Character.isDigit(y.charAt(i))) {
                    right = false;
                }
            } 
            /* construct a returnvalue. */
            String returnvalue = "";
            if (!right) {
                /* if input is invalid, then transfer page is wrong input page. */
                nextView = "wronginput.jsp";
            } else {
                /* Do the choosing operation. */
                BigInteger numX = new BigInteger(x);
                BigInteger numY = new BigInteger(y);
                /* Do add. */
                if (operation.equals("add")) {
                    returnvalue = numX.add(numY).toString();
                } 
                /* Do multiply. */
                else if (operation.equals("multiply")) {
                    returnvalue = numX.multiply(numY).toString();
                } 
                /* Do relatively prime. */
                else if (operation.equals("relativelyPrime")) {
                    boolean decision = numX.gcd(numY) == BigInteger.valueOf(1);
                    if (decision) {
                        returnvalue = "They are coprime.";
                    } else {
                        returnvalue = "They are not coprime.";
                    }
                } 
                /* Do mod. */
                else if (operation.equals("mod")) {
                    returnvalue = numX.max(numY).toString();
                } 
                /* Do modinverse. */
                else if (operation.equals("modInverse")) {
                    /* if X and Y are not coprime they cannot do modinverse. */
                    try {
                        returnvalue = numX.modInverse(numY).toString();
                    } catch (Exception ex) {
                        returnvalue = "X and Y are not coprime.";
                    }
                } 
                /* Do pow. */
                else {
                    returnvalue = numX.pow(numY.intValue()).toString();
                }
                /* Set returnvalue. */
                request.setAttribute("returnvalue", returnvalue);
                /* transfer page is output page. */
                nextView = "output.jsp";
            }
            RequestDispatcher view = request.getRequestDispatcher(nextView);
            view.forward(request, response);
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
