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
import model.Warehouse;

/**
 *
 * @author asus
 */
public class WarehouseDAO extends DBContext{
    public List<Warehouse> getAllWarehouse() {
        List<Warehouse> warehouses = new ArrayList<>();
        try {
            String sql = "SELECT kname FROM Kho";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Warehouse w = new Warehouse();
                w.setKname(rs.getString("kname"));
                warehouses.add(w);
            }

        } catch (SQLException ex) {
            Logger.getLogger(WarehouseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return warehouses;
    }
}
