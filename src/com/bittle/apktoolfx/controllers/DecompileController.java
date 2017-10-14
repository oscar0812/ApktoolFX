package com.bittle.apktoolfx.controllers;

import com.bittle.apktoolfx.LOGGER;
import javafx.concurrent.Task;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.input.DragEvent;
import javafx.scene.input.Dragboard;

import java.io.File;

public class DecompileController extends Controller {

    // checkbox settings
    @FXML
    CheckBox no_res_checkbox;
    @FXML
    CheckBox no_src_checkbox;

    // apk vars
    private String current_apk_path = "";

    @FXML
    public void drag_dropped(DragEvent event) {
        try {
            Dragboard board = event.getDragboard();
            File file = board.getFiles().get(0);

            if (file.getName().endsWith(".apk")) {
                // apk file dragged in
                current_apk_path = file.getAbsolutePath();
                main_text_field.setText(file.getName());

                LOGGER.setGUIVars(log_text_area, log_scroll_pane);
                LOGGER.getInstance().FINE("File dropped: " + file.getAbsolutePath());
            }
        } catch (Exception e) {
            LOGGER.getInstance().ERROR(e.toString());
        }
    }

    @FXML
    public void main_button_click() {
        LOGGER.setGUIVars(log_text_area, log_scroll_pane);

        if (main_text_field.getText().trim().isEmpty()) {
            LOGGER.getInstance().ERROR("APK text field cannot be empty");
            return;
        }

        Task task = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                // include any options
                String params = "d ";
                if (force_checkbox.isSelected())
                    params += " -f ";
                if (no_res_checkbox.isSelected())
                    params += " -r ";
                if (no_src_checkbox.isSelected())
                    params += " -s ";
                String[] p = params.split("\\s+");
                p = append(p, current_apk_path);

                // add the output directory to the end
                if (!output_dir_text.getText().isEmpty() &&
                        !output_dir_text.getText().toLowerCase().equals("no directory selected")) {

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
}
