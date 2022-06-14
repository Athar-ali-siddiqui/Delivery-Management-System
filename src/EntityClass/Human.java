/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EntityClass;

/**
 *
 * @
 */
public abstract class Human {
    private String name ,email , address,contact_no;

    public Human(String name, String email, String address, String contact_no) {
        this.name = name;
        this.email = email;
        this.address = address;
        this.contact_no = contact_no;
    }

    public Human() {
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getContact_no() {
        return contact_no;
    }
    
}
