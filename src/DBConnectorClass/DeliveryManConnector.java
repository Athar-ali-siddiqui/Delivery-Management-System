/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.Delivery;
import EntityClass.DeliveryMan;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 */
public class DeliveryManConnector extends DBConnecter{
    public ArrayList<String> fetchDeliveryManUnderEmployee(int e_id){
        ArrayList<String> list = new ArrayList<>();
//        select * from delivery_man where e_id = ?;
        try {
            
            String query = "select * from delivery_man where e_id = ? order by dm_id;";
            ps = con.prepareStatement(query);
            ps.setInt(1,e_id);
            
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(rs.getString("dm_id") +"- "+rs.getString("name"));
            }
        con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public DeliveryMan fetch(String pw , String name){
        DeliveryMan c = null;
        String queryStr = "select * from delivery_man where BINARY name = ? AND BINARY password = ? ";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setString(1, name);
            ps.setString(2, pw);
            

            rs = ps.executeQuery();
            
            while(rs.next()){
                c = new DeliveryMan( rs.getInt("dm_id"),rs.getInt("e_id"), rs.getString("name"),rs.getString("email"),rs.getString("address"),rs.getString("contact_no"));

            }
        con.close();
        }catch (SQLException ex) {
            Logger.getLogger(CustomerConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
                
    }
}
