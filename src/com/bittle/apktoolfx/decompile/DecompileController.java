package com.bittle.apktoolfx.decompile;

import com.bittle.apktoolfx.LOGGER;
import javafx.concurrent.Task;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;
import javafx.scene.input.DragEvent;
import javafx.scene.input.Dragboard;
import javafx.scene.input.TransferMode;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;
import javafx.stage.DirectoryChooser;

import java.io.File;
import java.net.URL;
import java.util.ResourceBundle;

public class DecompileController implements Initializable{
    @FXML
    TextField apk_text_field;

    @FXML
    Button decompile_apk_button;

    @FXML
    TextFlow log_text_area;

    @FXML
    ScrollPane log_scroll_pane;

    @FXML
    Text output_dir_text;

    // apk vars
    String current_apk_path = "";

    //@Override
    public void initialize(URL url, ResourceBundle bundle) {
        // needed to tell the logger class where to log to
        LOGGER.setGUIVars(log_text_area, log_scroll_pane);
        log_scroll_pane.setFitToWidth(true);
        LOGGER.getInstance().NORMAL("Started up successfully.");
    }

    @FXML
    void apk_drag_over(DragEvent event) {
        Dragboard board = event.getDragboard();
        if (board.hasFiles()) {
            event.acceptTransferModes(TransferMode.ANY);
        }
    }

    @FXML
    void apk_dropped(DragEvent event) {
        try {
            Dragboard board = event.getDragboard();
            File file = board.getFiles().get(0);

            if (file.getName().endsWith(".apk")) {
                // apk file dragged in
                current_apk_path = file.getAbsolutePath();
                apk_text_field.setText(file.getName());
                LOGGER.getInstance().FINE("File dropped: " + file.getAbsolutePath());
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }

    @FXML
    void decompile_click() {

        // d -f /Users/oscartorres/Downloads/telegram.apk -o /Users/oscartorres/Desktop/

        if (apk_text_field.getText().trim().isEmpty()) {
            LOGGER.getInstance().ERROR("APK text field cannot be empty");
            return;
        }

        Task task = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                brut.apktool.Main.main(new String[]{"d", current_apk_path});
                LOGGER.getInstance().NORMAL("-----------------------------------------------");
                return null;
            }
        };

        Thread thread = new Thread(task);
        thread.setDaemon(true);
        thread.start();

    }

    public void change_output_dir_click(){
        Alert alert = new Alert(Alert.AlertType.WARNING);
        alert.setTitle("Warning");
        alert.setContentText("All chosen folder contents will be erased!");

        alert.showAndWait();
        directoryChooser();
    }

    public void directoryChooser() {
        DirectoryChooser directoryChooser = new DirectoryChooser();
        File selectedDirectory =
                directoryChooser.showDialog(null);

        if (selectedDirectory == null) {
            output_dir_text.setText("No Directory selected");
        } else {
            output_dir_text.setText(selectedDirectory.getAbsolutePath());
        }
    }
}
