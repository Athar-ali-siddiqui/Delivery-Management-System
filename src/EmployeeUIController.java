/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DBConnectorClass.*;
import EntityClass.*;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
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
public class EmployeeUIController implements Initializable {
    Employee emp = new Employee();
    
    @FXML
    private Label nameLabel;
    @FXML
    private Label contactLabel;
    @FXML
    private TableView<Delivery> table;
    @FXML
    private TableColumn<Delivery, Integer> idColumn;
    @FXML
    private TableColumn<Delivery, String> customerNameColumn;
    @FXML
    private TableColumn<Delivery, String> pickupAddColumn;
    @FXML
    private TableColumn<Delivery, String> deliveryAddColumn;
    @FXML
    private TableColumn<Delivery, String> pickupDateColumn;
    @FXML
    private TextField orderIdText;
    @FXML
    private ComboBox deliveryManCombo;
    @FXML
    private Label deliveryManNameLabel;
    private Button logoutBtn;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    public void dataInit(Employee e){
        emp = e;
        nameLabel.setText(e.getName());
        contactLabel.setText(e.getContact_no());
        ObservableList<String> comboBoxElement = FXCollections.observableArrayList(new DeliveryManConnector().fetchDeliveryManUnderEmployee(emp.getE_id()));
        deliveryManCombo.setItems(comboBoxElement);
        setTable();
        
    }
    private void setTable(){
        idColumn.setCellValueFactory(new PropertyValueFactory<Delivery, Integer>("d_id"));
        customerNameColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("c_name"));
        pickupAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_address"));
        deliveryAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("delivery_address"));
        pickupDateColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_date"));
        
        ObservableList<Delivery> list =FXCollections.observableArrayList(new DeliveryConnector().fetchTakenDeliveryEmployee());
        
        table.setItems(list);
    }
    @FXML
    private void enterAction(ActionEvent event) {
        System.out.println(deliveryManCombo.getSelectionModel().getSelectedItem().toString());
        String[] arr = deliveryManCombo.getSelectionModel().getSelectedItem().toString().split("-");
        int dm_id = Integer.parseInt(arr[0]);
        int d_id = Integer.parseInt(orderIdText.getText());
        new DeliveryConnector().placeDeliveryByEmployee(d_id, dm_id,emp.getE_id(), "taken");
        deliveryManNameLabel.setText("Order is taken to " + arr[1]);
        setTable();
    }

    private void logout(ActionEvent event) {
        try {
            Parent root = FXMLLoader.load(getClass().getResource("logInUI.fxml"));
            
            Scene scene = new Scene(root);
            Stage stage = new Stage();
            stage.setScene(scene);
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(EmployeeUIController.class.getName()).log(Level.SEVERE, null, ex);
        }
        Stage stage = (Stage) logoutBtn.getScene().getWindow();
        stage.close();
    }
}
