
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import DBConnectorClass.*;
import EntityClass.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;
/**
 *
 * @author Ather Ali Siddiqui
 */
public class LogInUIController implements Initializable {
    
    
    @FXML
    private Button loginButton;
    @FXML
    private Label validationLabel;
    
    @FXML
    private PasswordField passwordLabel;
    @FXML
    private ComboBox userComboBox;
    @FXML
    private TextField nameLabel;

    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        ObservableList<String> comboBoxElement = FXCollections.observableArrayList("Customer","Employee","Delivery Man");
        userComboBox.setItems(comboBoxElement);
    }    

    @FXML
    private void loginButtonAction(ActionEvent event) {
        validationLabel.setVisible(false);
        String str = userComboBox.getSelectionModel().getSelectedItem().toString();
        if(str.equals("Customer")){
            CustomerConnector bm_con = new CustomerConnector();
            Customer bm = bm_con.fetch(passwordLabel.getText(), nameLabel.getText());
            if(bm == null) {
                validationLabel.setText("invalid INPUT");
                validationLabel.setVisible(true);
            }
            else{
                validationLabel.setText(bm.getEmail());
                validationLabel.setVisible(true);
                
                try {
                    FXMLLoader loader = new FXMLLoader(getClass().getResource("CustomerUI.fxml"));
                    Parent root = loader.load();
                    CustomerUIController mc = loader.getController();
                    mc.dataInit(bm);

                    Scene scene = new Scene(root);
                    
                    Stage stage = new Stage();
                    
                    stage.setScene(scene);
                    
                    stage.show();
                    closeWindow();
                } catch (IOException ex) {
                    Logger.getLogger(LogInUIController.class.getName()).log(Level.SEVERE, null, ex);
                }
                    
            }
        }
        else if(str.equals("Employee")){
            EmployeeConnector bt_con = new EmployeeConnector();
            Employee e = bt_con.fetch(passwordLabel.getText(), nameLabel.getText());
            if(e == null) {
                validationLabel.setText("invalid INPUT");
                validationLabel.setVisible(true);
            }
            else{
                validationLabel.setText(e.getEmail());
                validationLabel.setVisible(true);
                try {
                    FXMLLoader loader = new FXMLLoader(getClass().getResource("EmployeeUI.fxml"));
                    Parent root = loader.load();
                    EmployeeUIController mc = loader.getController();
                    mc.dataInit(e);

                    Scene scene = new Scene(root);
                    
                    Stage stage = new Stage();
                    
                    stage.setScene(scene);
                    
                    stage.show();
                    closeWindow();
                } catch (IOException ex) {
                    Logger.getLogger(LogInUIController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        else if(str.equals("Delivery Man")){
            DeliveryManConnector lo_con = new DeliveryManConnector();
            DeliveryMan dm = lo_con.fetch(passwordLabel.getText(), nameLabel.getText());
            if(dm == null) {
                validationLabel.setText("invalid INPUT");
                validationLabel.setVisible(true);
            }
            else{
                validationLabel.setText(dm.getEmail());
                validationLabel.setVisible(true);
                try {
                    FXMLLoader loader = new FXMLLoader(getClass().getResource("DeliveryManUI.fxml"));
                    Parent root = loader.load();
                    DeliveryManUIController mc = loader.getController();
                    mc.dataInit(dm);

                    Scene scene = new Scene(root);
                    
                    Stage stage = new Stage();
                    
                    stage.setScene(scene);
                    
                    stage.show();
                    closeWindow();
                } catch (IOException ex) {
                    Logger.getLogger(LogInUIController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        else{
            validationLabel.setText("Select User");
            validationLabel.setVisible(true);
        }
    }
    private void closeWindow(){
        Stage stage = (Stage)loginButton.getScene().getWindow();
        stage.close();
    }
    
}
