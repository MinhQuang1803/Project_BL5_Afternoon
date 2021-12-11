/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import dao.ReleaseDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;
import model.ReleaseDetail;

/**
 *
 * @author asus
 */
public class ListCategoriesController extends HttpServlet {

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
        try {
            ProductDAO productDAO = new ProductDAO();
            ReleaseDetailDAO releaseDetailDAO = new ReleaseDetailDAO();
            List<Product> products = productDAO.getAllCate();
            List<ReleaseDetail> releaseDetails = releaseDetailDAO.getTotalNumberOut();
            int count = -1;
            for (Product p : products) {
                count++;
                for (ReleaseDetail releaseDetail : releaseDetails) {
                    if (p.getCate().getLid() == releaseDetail.getProduct().getCate().getLid()) {
                        Product product = new Product();
                        int temp = p.getTotal() - releaseDetail.getNumber_out();
                        product.setTotal(temp);
                        Category c = new Category();
                        c.setLid(p.getCate().getLid());
                        c.setLname(p.getCate().getLname());
                        product.setCate(c);
                        products.set(count, product);
                    }
                }
            }
            request.setAttribute("products", products);
            request.getRequestDispatcher("../view/cate/list_cate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
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
