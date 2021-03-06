
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
import static java.util.Objects.isNull;
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
    private static final String VIEW_RESULT_URL="/product.jsp";
    private static final String FIELD_CAT="category";
    private static final String FIELD_PDT="product";
    private static final String FIELD_DESC="description";
    private static final String FIELD_QTY="quantity";
    private static final String FIELD_UNIT="unit";
    private static final String ERROR_PDT="Il faut indiquer le nom du produit";
    private static final String ERROR_QTY="Combien en faut-il?";
    private String category,name,description,unit;
    private float quantity=0;
    private int fail=0;
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
        request.setAttribute("errorStatus", true);
        request.setAttribute("addedProduct",false);
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
        

        HashMap<String, String> errors=new HashMap<>();

        name= request.getParameter(FIELD_PDT);
        quantity= Float.parseFloat(request.getParameter(FIELD_QTY));
          
        if(name.length()==0){
            fail++;
            errors.put(FIELD_PDT,ERROR_PDT);
            request.setAttribute("errorStatus",true);
            request.setAttribute("errors",errors);
            request.setAttribute("actionMessage","Mauvaise saisie");
        }
        if(quantity==0.0){
            fail++;
            errors.put(FIELD_QTY,ERROR_QTY);
            request.setAttribute("errorStatus",true);
            request.setAttribute("errors",errors);
            request.setAttribute("actionMessage","Mauvaise saisie");   
        }
        if(fail==0){
            category= request.getParameter(FIELD_CAT);
            description= request.getParameter(FIELD_DESC);      
            unit= request.getParameter(FIELD_UNIT);
            Product product = new Product(category,name,description,quantity,unit);
            //products.put(name,product);
            request.setAttribute("errorStatus",false);
            request.setAttribute("addedProduct",true);
            request.setAttribute("product",product);
            request.setAttribute("user",1);
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
