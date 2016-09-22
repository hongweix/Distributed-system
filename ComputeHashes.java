/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import sun.misc.BASE64Encoder;

/**
 *
 * @author Hongwei Xie
 * @version 1.2
 * @since Feb 1, 2016
 */
public class ComputeHashes extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            /* Get parameters from request includes the original text and type of hashFunction. */
            String input = request.getParameter("originalText");
            String type = request.getParameter("hashFunction");
            /* Construct output1 and output2. */
            String output1 = "";
            String output2 = "";
            try {
                /* Instantiate a MseesageDigest object which has a instance type the same as User's choice. */
                MessageDigest md = MessageDigest.getInstance(type);
                /* Update the digest using array of bytes. */
                md.update(input.getBytes());
                /* Completes the hash computation by performing final operations such as padding. */
                byte[] by = md.digest();
                /* Compute the hexadecimal representation of a byte array. */
                try {
                    output1 = getHexStrnig(by);
                } catch (Exception ex) {
                    Logger.getLogger(ComputeHashes.class.getName()).log(Level.SEVERE, null, ex);
                }
                /* Instantiate a BASE64Encoder instance. */
                BASE64Encoder be = new BASE64Encoder();
                /* Compute the base64 encode of text. */
                output2 = be.encode(by);
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(ComputeHashes.class.getName()).log(Level.SEVERE, null, ex);
            }
            /**
             * The output html page content.
             */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            /* Output title. */
            out.println("<head>");
            out.println("<title>Servlet ComputeHashes</title>");            
            out.println("</head>");
            /* Output body, including original input and encrypted output in
            two hash functions. */
            out.println("<body>");
            out.println("<p>" + "Hashes of the string \"" + input + "\":" + "</p>");
            out.println("<p>" + type + "(Hex): " + output1.toUpperCase() + "</p>");
            out.println("<p>" + type + "(Base 64): " + output2 + "</p>");
            out.println("</body>");
            out.println("</html>");
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
    /**
     * Compute the hexadecimal representation of a byte array and return string method.
     * @param b
     * @return
     * @throws Exception 
     */
    public String getHexStrnig(byte[] b) throws Exception {
        String result = "";
        for (int i=0; i < b.length; i++) {
        result += Integer.toString((b[i] & 0xff) + 0x100, 16).substring( 1 );
        }
        return result; //To change body of generated methods, choose Tools | Templates.
    }

}
