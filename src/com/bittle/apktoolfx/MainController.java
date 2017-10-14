package com.bittle.apktoolfx;

import com.bittle.apktoolfx.compile.CompileController;
import com.bittle.apktoolfx.decompile.DecompileController;
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

public class MainController implements Initializable {

    @FXML private TabPane tabPane;
    @FXML private Tab compileTab;
    @FXML private CompileController compileController;

    @FXML private Tab decompileTab;
    @FXML private DecompileController decompileController;

    // apk vars
    String current_apk_path = "";

    @Override
    public void initialize(URL url, ResourceBundle bundle) {

    }
}