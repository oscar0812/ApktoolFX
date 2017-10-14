package com.bittle.apktoolfx.compile;

import com.bittle.apktoolfx.Controller;
import com.bittle.apktoolfx.LOGGER;
import javafx.concurrent.Task;
import javafx.fxml.FXML;
import javafx.scene.input.DragEvent;
import javafx.scene.input.Dragboard;

import java.io.File;

public class CompileController extends Controller {
    private String current_folder_path;

    @FXML
    public void drag_dropped(DragEvent event) {
        try {
            Dragboard board = event.getDragboard();
            File file = board.getFiles().get(0);

            if (file.isDirectory()) {
                // folder dragged in
                current_folder_path = file.getAbsolutePath();
                main_text_field.setText(file.getPath());

                LOGGER.setGUIVars(log_text_area, log_scroll_pane);
                LOGGER.getInstance().INFO("File dropped: " + file.getAbsolutePath());
            }
        } catch (Exception e) {
            LOGGER.getInstance().ERROR(e.toString());
        }
    }

    public void main_button_click() {
        LOGGER.setGUIVars(log_text_area, log_scroll_pane);

        if (main_text_field.getText().trim().isEmpty()) {
            LOGGER.getInstance().ERROR("Folder field cannot be empty");
            return;
        }

        Task task = new Task<Void>() {
            @Override
            protected Void call() throws Exception {
                // include any options
                String params = "b ";
                if (force_checkbox.isSelected())
                    params += " -f ";

                String[] p = params.split("\\s+");
                p = append(p, current_folder_path);

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
