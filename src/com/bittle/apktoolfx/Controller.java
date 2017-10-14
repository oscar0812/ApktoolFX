package com.bittle.apktoolfx;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.DragEvent;
import javafx.scene.input.Dragboard;
import javafx.scene.input.TransferMode;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;
import javafx.stage.DirectoryChooser;

import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;

// min methods and fields controllers should have
public abstract class Controller implements Initializable {
    @FXML
    public TextField main_text_field;

    @FXML
    public Button main_button;

    @FXML
    public TextFlow log_text_area;

    @FXML
    public ScrollPane log_scroll_pane;

    @FXML
    public Text output_dir_text;

    @FXML
    public CheckBox force_checkbox;

    public void initialize(URL url, ResourceBundle bundle) {
        log_scroll_pane.setFitToWidth(true);
    }

    @FXML
    public void drag_over(DragEvent event) {
        Dragboard board = event.getDragboard();
        if (board.hasFiles()) {
            event.acceptTransferModes(TransferMode.ANY);
        }
    }

    public void change_output_dir_click() {
        Alert alert = new Alert(Alert.AlertType.WARNING);
        alert.setTitle("Warning");
        alert.setContentText("All chosen folder contents will be erased!");

        alert.showAndWait();
        directoryChooser();
    }

    private void directoryChooser() {
        DirectoryChooser directoryChooser = new DirectoryChooser();
        File selectedDirectory =
                directoryChooser.showDialog(null);

        if (selectedDirectory == null) {
            output_dir_text.setText("No Directory selected");
        } else {
            output_dir_text.setText(selectedDirectory.getAbsolutePath());
        }
    }

    // helper method
    public String[] append(String[] arr, String a) {
        String[] temp = new String[arr.length + 1];
        System.arraycopy(arr, 0, temp, 0, arr.length);
        temp[arr.length] = a;

        return temp;
    }

    // these methods could be different
    @FXML
    public abstract void drag_dropped(DragEvent event);

    @FXML
    public abstract void main_button_click();
}
