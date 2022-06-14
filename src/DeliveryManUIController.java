/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import EntityClass.*;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.Initializable;
import EntityClass.*;
import DBConnectorClass.*;
import java.io.IOException;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;
/**
 * FXML Controller class
 *
 * @author Ather Ali Siddiqui
 */
public class DeliveryManUIController implements Initializable {
    DeliveryMan dm = new DeliveryMan();
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
    private Label deliveryCompletedLabel;
    @FXML
    private Label dateLabel;
    private Button logoutBtn;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        
    }    
    public void dataInit(DeliveryMan d){
        dm = d;
        nameLabel.setText(dm.getName());
        contactLabel.setText(dm.getContact_no());
        dateLabel.setText(LocalDate.now().toString());
        setTable();
        
    }
    private void setTable(){
        idColumn.setCellValueFactory(new PropertyValueFactory<Delivery, Integer>("d_id"));
        customerNameColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("c_name"));
        pickupAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_address"));
        deliveryAddColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("delivery_address"));
        pickupDateColumn.setCellValueFactory(new PropertyValueFactory<Delivery, String>("pickup_date"));
        
        ObservableList<Delivery> list =FXCollections.observableArrayList(new DeliveryConnector().fetchAssignedDeliveryDeliveryMan(dm.getDm_id()));
        
        table.setItems(list);
    }

    @FXML
    private void enterAction(ActionEvent event) {
        new DeliveryConnector().completeDeliveryByDeliveryMan(Integer.parseInt(orderIdText.getText()) ,"completed");
        deliveryCompletedLabel.setText("Delivery Completed");
        setTable();
    }

    private void logout(ActionEvent event) {
        try {
            Parent root = new FXMLLoader(getClass().getResource("logInUI.fxml")).load();
            
            Scene scene = new Scene(root);
            Stage stage = new Stage();
            stage.setScene(scene);
            stage.show();
        } catch (IOException ex) {
            Logger.getLogger(DeliveryManUIController.class.getName()).log(Level.SEVERE, null, ex);
        }
        Stage stage = (Stage) logoutBtn.getScene().getWindow();
        stage.close();
    
    }
}
