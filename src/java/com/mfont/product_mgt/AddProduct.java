/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mfont.product_mgt;

import com.mfont.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author accueil
 */


@WebServlet(name = "product", urlPatterns = {"/product"})
public class AddProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String VIEW_PAGE_URL="/index.jsp";
    private static final String FIELD_CAT="category";
    private static final String FIELD_PDT="product";
    private static final String FIELD_DESC="description";
    private static final String FIELD_QTY="category";
    private static final String ERROR_PDT="Il faut au moins indiquer le nom du produit";
    private String category,name,description;
    private float quantity;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Product</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Product at " + request.getContextPath() + "</h1>");
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
        request.setAttribute("errorStatus", true);
        response.getWriter().append("Redirecting to form...");
        this.getServletContext().getRequestDispatcher(VIEW_PAGE_URL).forward(request, response);
        //processRequest(request, response);
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
        
        category= request.getParameter(FIELD_CAT);
        name= request.getParameter(FIELD_PDT);
        description= request.getParameter(FIELD_DESC);
        quantity= Float.parseFloat(request.getParameter(FIELD_QTY));
        HashMap<String, String> errors=new HashMap<String,String>();

        if (name.equals(null)){
            errors.put(FIELD_PDT,ERROR_PDT);
            request.setAttribute("errors",errors);
            request.setAttribute("actionMessage","Problème dans la saisie");
        }else{
            Product product = new Product(category,name,description,quantity);
            request.setAttribute("errorStatus",false);
            request.setAttribute(name, this);
        }
        
        
        this.getServletContext().getRequestDispatcher(VIEW_PAGE_URL).include(request,response);
        
//processRequest(request, response);
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