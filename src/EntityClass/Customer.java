/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EntityClass;

/**
 *
 * @author Ather Ali Siddiqui
 */
public class Customer extends Human{
    private int c_id;

    public Customer(int c_id, String name, String email, String address, String contact_no) {
        super(name, email, address, contact_no);
        this.c_id = c_id;
    }

    public Customer() {
        
    }

    public int getC_id() {
        return c_id;
    }
    
}
