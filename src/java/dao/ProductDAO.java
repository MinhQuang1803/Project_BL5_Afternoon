/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;
import model.Release;
import model.ReleaseDetail;
import model.Warehouse;

/**
 *
 * @author asus
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllCate() {
        List<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT l.lid,l.lname, SUM(m.product_left) as total from  MatHang m INNER JOIN LoaiHang l On m.lid=l.lid \n"
                    + "GROUP BY l.lid , l.lname";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setLid(rs.getInt("lid"));
                c.setLname(rs.getString("lname"));
                Product p = new Product();
                p.setTotal(rs.getInt("total"));
                p.setCate(c);
                products.add(p);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
}
