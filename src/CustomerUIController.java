/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.Initializable;
import EntityClass.*;
import DBConnectorClass.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
/**
 * FXML Controller class
 *
 * @author Ather Ali Siddiqui
 */
public class CustomerUIController implements Initializable {
    Customer cus = new Customer();
    @FXML
    private Label nameLabel;
    @FXML
    private Label contactLabel;
    @FXML
    private TextField pickupAddText;
    @FXML
    private TextField deliveryAddText;
    @FXML
    private DatePicker pickupDateText;
    @FXML
    private Label orderValidationLabel;
    @FXML
    private TableView<Delivery> ogTable;
    @FXML
    private TableColumn<Delivery, Integer> ogIdColumn;
    @FXML
    private TableColumn<Delivery, String> ogPickupAddColumn;
    @FXML
    private TableColumn<Delivery, String> ogDeliveryAddColumn;
    @FXML
    private TableColumn<Delivery, String> ogStatusColumn;
    @FXML
    private TableColumn<Delivery, String> ogTakenByColumn;
    @FXML
    private TableColumn<Delivery, String> ogPickupDateColumn;
    @FXML
    private TableView<Delivery> cdTable;
    @FXML
    private TableColumn<Delivery, Integer> cdIdColumn;
    @FXML
    private TableColumn<Delivery, String> cdPickupAddColumn;
    @FXML
    private TableColumn<Delivery, String> cdDeliveryAddColumn;
    @FXML
    private TableColumn<Delivery, String> cdPickupDateColumn;
    @FXML
    private TableColumn<Delivery, String> deliveryDateColumn;
    @FXML
    private TableColumn<Delivery, String> cdEmpNameColumn;
    @FXML
    private TableColumn<Delivery, String> cdDmNameColumn;
    private Button logoutBtn;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
    public void dataInit(Customer c){
        cus = c;
        nameLabel.setText(cus.getName());
        contactLabel.setText(cus.getContact_no());
        
        setOngaoingDeliveryTable();
    }
    private void setOngaoingDeliveryTable(){
        ogIdColumn.setCellValueFactory(new PropertyValueFactory<Delivery, Integer>("d_id"));
        ogPickupAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_address"));
        ogPickupDateColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_date"));
        ogDeliveryAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("delivery_address"));
        ogStatusColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("status"));
        ogTakenByColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("emp_name"));
        
        ObservableList<Delivery> list =FXCollections.observableArrayList(new DeliveryConnector().fetchOGDeliveryCustomer(cus.getC_id()));
        
        ogTable.setItems(list);

         cdIdColumn.setCellValueFactory(new PropertyValueFactory<Delivery, Integer>("d_id"));
        cdPickupAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_address"));
        cdDeliveryAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("delivery_address"));
        cdPickupDateColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_date"));
         deliveryDateColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("delivered_date"));
        cdEmpNameColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("emp_name"));
        cdDmNameColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("dm_name"));

    

        ObservableList<Delivery> list1 =FXCollections.observableArrayList(new DeliveryConnector().fetchCDDeliveryCustomer(cus.getC_id()));
        
        cdTable.setItems(list1);
        
        
    }
    @FXML
    private void placeOrderAction(ActionEvent event) {
//        System.out.println(pickupDateText.getEditor().getText());
        DeliveryConnector dc = new DeliveryConnector();
        dc.insertDeliveryByCustomer(cus.getC_id(), pickupAddText.getText(), deliveryAddText.getText(), "placed", pickupDateText.getEditor().getText());
        System.out.println(pickupDateText.getEditor().getText());
        orderValidationLabel.setText("Order placed successfully !");
        setOngaoingDeliveryTable();
    }

    private void logout(ActionEvent event) {
        try {
            Parent root = new FXMLLoader(getClass().getResource("LogInUI.fxml")).load();
            
            Scene scene = new Scene(root);
            Stage stage = new Stage();
            stage.setScene(scene);
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(CustomerUIController.class.getName()).log(Level.SEVERE, null, ex);
        }
        Stage stage = (Stage) logoutBtn.getScene().getWindow();
        stage.close();
    }
}
