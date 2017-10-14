package com.bittle.apktoolfx.decompile;

import com.bittle.apktoolfx.LOGGER;
import javafx.concurrent.Task;
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

    // checkbox settings
    @FXML CheckBox force_checkbox;
    @FXML CheckBox no_res_checkbox;
    @FXML CheckBox no_src_checkbox;

    // apk vars
    private String current_apk_path = "";

    //@Override
    public void initialize(URL url, ResourceBundle bundle) {
        log_scroll_pane.setFitToWidth(true);
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

                LOGGER.setGUIVars(log_text_area, log_scroll_pane);
                LOGGER.getInstance().FINE("File dropped: " + file.getAbsolutePath());
            }
        } catch (Exception e) {
            LOGGER.getInstance().ERROR(e.toString());
        }
    }

    @FXML
    void decompile_click() {
        LOGGER.setGUIVars(log_text_area, log_scroll_pane);
        // d -f /Users/oscartorres/Downloads/telegram.apk -o /Users/oscartorres/Desktop/

        if (apk_text_field.getText().trim().isEmpty()) {
            LOGGER.getInstance().ERROR("APK text field cannot be empty");
            return;
        }

        Task task = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                // include any options
                String params = "d ";
                if(force_checkbox.isSelected())
                    params+=" -f ";
                if(no_res_checkbox.isSelected())
                    params+=" -r ";
                if(no_src_checkbox.isSelected())
                    params+=" -s ";
                String[] p = params.split("\\s+");
                p = append(p, current_apk_path);

                // add the output directory to the end
                if(!output_dir_text.getText().isEmpty() &&
                        !output_dir_text.getText().toLowerCase().equals("no directory selected")){

                    p = append(p, "-o");
                    p = append(p, output_dir_text.getText());

                }

                brut.apktool.Main.main(p);
                LOGGER.getInstance().NORMAL("-----------------------------------------------");
                return null;
            }
        };

        Thread thread = new Thread(task);
        thread.setDaemon(true);
        thread.start();
    }

    // helper method
    private String[] append(String[] arr, String a){
        String[] temp = new String[arr.length+1];
        for(int x = 0; x<arr.length; x++){
            temp[x] = arr[x];
        }
        temp[arr.length] = a;

        return temp;
    }

    public void change_output_dir_click(){
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
}
