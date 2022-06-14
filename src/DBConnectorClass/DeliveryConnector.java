/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.Delivery;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.*;
import java.time.LocalDate;
/**
 *
 * @author Ather Ali Siddiqui
 */
public class DeliveryConnector extends DBConnecter{
    
    public void completeDeliveryByDeliveryMan(int d_id ,String status){
        try {
            String query = "update delivery set delivered_date = ? ,status = ? where d_id = ?";
            ps = con.prepareStatement(query);
            ps.setString(1,LocalDate.now().toString());
            ps.setString(2, status);
            ps.setInt(3,d_id);
            
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Delivery> fetchAssignedDeliveryDeliveryMan(int dm_id){
        ArrayList<Delivery> list = new ArrayList<>();
        try {
            
            String query = "select d.d_id d_id ,d.pickup_address pickup_address , d.delivery_address delivery_address,d.pickup_date pickup_date ,  c.name c_name from delivery d INNER JOIN customer c ON c.c_id = d.c_id where dm_id = ? and d.status = 'taken';";
            ps = con.prepareStatement(query);
            ps.setInt(1,dm_id);
            
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Delivery(
                rs.getString("c_name"),rs.getInt("d_id"),rs.getString("pickup_address"),rs.getString("delivery_address"),rs.getString("pickup_date")));
            }
        con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void placeDeliveryByEmployee(int d_id ,int dm_id,int e_id ,String status){
        try {
            String query = "update delivery set dm_id = ? , status = ? ,e_id = ? where d_id = ?";
            ps = con.prepareStatement(query);
            ps.setInt(1,dm_id);
            ps.setString(2, status);
            ps.setInt(3,e_id);
            ps.setInt(4,d_id);
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Delivery> fetchTakenDeliveryEmployee(){
        ArrayList<Delivery> list = new ArrayList<>();
        try {
            
            String query = "select d.d_id d_id ,d.pickup_address pickup_address , d.delivery_address delivery_address,d.pickup_date pickup_date ,  c.name c_name from delivery d INNER JOIN customer c ON c.c_id = d.c_id where d.status = 'placed';";
            ps = con.prepareStatement(query);
            
            
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Delivery(
                rs.getString("c_name"),rs.getInt("d_id"),rs.getString("pickup_address"),rs.getString("delivery_address"),rs.getString("pickup_date")));
            }
        con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<Delivery> fetchCDDeliveryCustomer(int cus_id){
        ArrayList<Delivery> list = new ArrayList<>();
        try {
            
            String query = "select d.d_id d_id ,d.pickup_address pickup_address , d.delivery_address delivery_address,d.pickup_date pickup_date , d.delivered_date delivered_date , dm.name dm_name,e.name emp_name from delivery d LEFT OUTER JOIN employee e ON e.e_id = d.e_id INNER JOIN delivery_man dm ON dm.dm_id = d.dm_id where d.c_id = ? AND d.status = 'completed';";
            ps = con.prepareStatement(query);
            ps.setInt(1,cus_id);
            
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Delivery(
                rs.getInt("d_id"),rs.getString("emp_name"),rs.getString("dm_name"),rs.getString("pickup_address"),rs.getString("delivery_address"),rs.getString("pickup_date") 
                        ,rs.getString("delivered_date"))
                );
            }
        con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public ArrayList<Delivery> fetchOGDeliveryCustomer(int cus_id){
        ArrayList<Delivery> list = new ArrayList<>();
        try {
            
            String query = "select *  from delivery d LEFT OUTER JOIN employee e ON e.e_id = d.e_id where d.c_id = ? AND (d.status = 'placed' Or d.status = 'taken');";
            ps = con.prepareStatement(query);
            ps.setInt(1,cus_id);
            
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Delivery(
                rs.getInt("d_id"),rs.getString("name"),rs.getString("pickup_address"),rs.getString("delivery_address"),rs.getString("status") 
                        ,rs.getString("pickup_date"))
                );
            }
        con.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public void insertDeliveryByCustomer(int c_id, String pickup_address, String delivery_address, String status, String pickup_date){
        String[] arr = pickup_date.split("/");
        StringBuilder date = new StringBuilder();
        date.append(arr[2]+"-");
        if(arr[0].length() == 1) date.append("0"+arr[0]+"-");
        else if(arr[0].length() == 2) date.append(arr[0]+"-");
        if(arr[1].length() == 1) date.append("0"+arr[1]);
        else if(arr[1].length() == 2) date.append(arr[1]);
        try {
            String query = "insert into delivery (c_id,pickup_address,delivery_address,status,pickup_date ) "
                    + "values (?,?,?,?,?);";
            ps = con.prepareStatement(query);
            ps.setInt(1,c_id);
            ps.setString(2, pickup_address);
            ps.setString(3, delivery_address);
            ps.setString(4, status);
            ps.setString(5, date.toString());
            
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DeliveryConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
