/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnectorClass;

import EntityClass.Employee;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class EmployeeConnector extends DBConnecter{
    public Employee fetch(String pw , String name){
        Employee c = null;
        String queryStr = "select * from employee where BINARY name = ? AND BINARY password = ? ";
        try {
            ps = con.prepareStatement(queryStr);
            ps.setString(1, name);
            ps.setString(2, pw);
            

            rs = ps.executeQuery();
            
            while(rs.next()){
                c = new Employee( rs.getInt("e_id"), rs.getString("name"),rs.getString("email"),rs.getString("address"),rs.getString("contact_no"));

            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
                
    }
}
