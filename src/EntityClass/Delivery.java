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
public class Delivery {
    private int d_id , e_id ,dm_id ,c_id;
    private String emp_name,dm_name ,c_name ;
    private String pickup_address,delivery_address ,status ,pickup_date ,delivered_date;

    public Delivery(int d_id, String emp_name, String pickup_address, String delivery_address, String status, String pickup_date) {
        this.d_id = d_id;
        this.emp_name = emp_name;
        this.pickup_address = pickup_address;
        this.delivery_address = delivery_address;
        this.status = status;
        this.pickup_date = pickup_date;
    }

    public Delivery(int d_id, String emp_name, String delivery_man_name, String pickup_address, String delivery_address, String pickup_date, String delivered_date) {
        this.d_id = d_id;
        this.emp_name = emp_name;
        this.dm_name = delivery_man_name;
        this.pickup_address = pickup_address;
        this.delivery_address = delivery_address;
        this.pickup_date = pickup_date;
        this.delivered_date = delivered_date;
    }

    public Delivery(int c_id, String pickup_address, String delivery_address, String status, String pickup_date) {
        this.c_id = c_id;
        this.pickup_address = pickup_address;
        this.delivery_address = delivery_address;
        this.status = status;
        this.pickup_date = pickup_date;
        
    }
    public Delivery( String c_name,int d_id,String pickup_address, String delivery_address, String pickup_date) {
        this.d_id = d_id;
        this.pickup_address = pickup_address;
        this.delivery_address = delivery_address;
        this.c_name = c_name;
        this.pickup_date = pickup_date;
        
    }
    public int getD_id() {
        return d_id;
    }

    public int getE_id() {
        return e_id;
    }

    public int getDm_id() {
        return dm_id;
    }

    public int getC_id() {
        return c_id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public String getDm_name() {
        return dm_name;
    }

    public String getC_name() {
        return c_name;
    }

    public String getPickup_address() {
        return pickup_address;
    }

    public String getDelivery_address() {
        return delivery_address;
    }

    public String getStatus() {
        return status;
    }

    public String getPickup_date() {
        return pickup_date;
    }

    public String getDelivered_date() {
        return delivered_date;
    }
    
    
}
