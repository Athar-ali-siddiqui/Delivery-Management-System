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
public class Employee extends Human{
    private int e_id;

    public Employee(int e_id, String name, String email, String address, String contact_no) {
        super(name, email, address, contact_no);
        this.e_id = e_id;
    }

    public Employee() {
    }

    public int getE_id() {
        return e_id;
    }
    
    
}
