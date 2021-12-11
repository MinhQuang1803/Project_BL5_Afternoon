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
public class ReleaseDetailDAO extends DBContext {

    public List<ReleaseDetail> getDataByCategoryId(int categoryId) {
        List<ReleaseDetail> releaseDetails = new ArrayList<>();
        try {
            String sql = "SELECT m.mid,m.mname,m.price,k.kname,c.number_out,p.pdate,c.total FROM MatHang m \n"
                    + "INNER JOIN ChiTietPhieuXuat c ON m.mid=c.mid\n"
                    + "INNER JOIN PhieuXuatHang p ON p.pid=c.pid\n"
                    + "INNER JOIN Kho k ON k.kid=p.kid\n"
                    + "INNER JOIN LoaiHang l ON l.lid = m.lid\n"
                    + "WHERE l.lid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, categoryId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Warehouse w = new Warehouse();
                w.setKname(rs.getString("kname"));

                Release r = new Release();
                r.setPdate(rs.getDate("pdate"));
                r.setWarehouse(w);

                Product p = new Product();
                p.setMid(rs.getInt("mid"));
                p.setMname(rs.getString("mname"));
                p.setPrice(rs.getDouble("price"));

                ReleaseDetail rd = new ReleaseDetail();
                rd.setNumber_out(rs.getInt("number_out"));
                rd.setTotal(rs.getDouble("total"));
                rd.setRelease(r);
                rd.setProduct(p);
                releaseDetails.add(rd);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ReleaseDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return releaseDetails;
    }

    public List<ReleaseDetail> getTotalNumberOut() {
        List<ReleaseDetail> releaseDetails = new ArrayList<>();
        try {
            String sql = "SELECT lid, SUM(number_out) as Tong FROM ChiTietPhieuXuat c INNER JOIN MatHang m\n"
                    + "ON c.mid = m.mid\n"
                    + "GROUP BY lid";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setLid(rs.getInt("lid"));
                Product p = new Product();
                p.setCate(c);
                ReleaseDetail r = new ReleaseDetail();
                r.setProduct(p);
                r.setNumber_out(rs.getInt("Tong"));
                releaseDetails.add(r);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ReleaseDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return releaseDetails;
    }
}
