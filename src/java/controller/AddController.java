/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import dao.ReleaseDetailDAO;
import dao.WarehouseDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import model.ReleaseDetail;
import model.Warehouse;

/**
 *
 * @author asus
 */
public class AddController extends HttpServlet {


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
        int lid = Integer.parseInt(request.getParameter("lid"));
        ProductDAO productDAO = new ProductDAO();
        WarehouseDAO warehouseDAO = new WarehouseDAO();
        List<Product> products = productDAO.getAllProductNameByCateId(lid);
        List<Warehouse> warehouses = warehouseDAO.getAllWarehouse();
        request.setAttribute("products", products);
        request.setAttribute("warehouses", warehouses);
        request.getRequestDispatcher("../view/cate/add.jsp").forward(request, response);
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
//        ProductDAO productDAO = new ProductDAO();
//        List<Product> products = productDAO.getAllProductData();
//        for (Product p : products) {
//            Product product = new Product();
//            double temp = p.getPrice()*p.getReleaseDetail().getNumber_out();
//            ReleaseDetail releaseDetail = new ReleaseDetail();
//            releaseDetail.setTotal(temp);
//            product.setReleaseDetail(releaseDetail);
//        }
//        request.setAttribute("products", products);
//        request.getRequestDispatcher("../view/cate/add.jsp").forward(request, response);
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
