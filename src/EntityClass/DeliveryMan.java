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
public class DeliveryMan extends Human{
    private int dm_id,e_id;

    public DeliveryMan(int dm_id, int e_id, String name, String email, String address, String contact_no) {
        super(name, email, address, contact_no);
        this.dm_id = dm_id;
        this.e_id = e_id;
    }

    public DeliveryMan() {
    }

    public int getE_id() {
        return e_id;
    }

    public int getDm_id() {
        return dm_id;
    }
    
}
