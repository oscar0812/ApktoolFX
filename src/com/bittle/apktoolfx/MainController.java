package com.bittle.apktoolfx;

import com.bittle.apktoolfx.compile.CompileController;
import com.bittle.apktoolfx.decompile.DecompileController;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import java.net.URL;
import java.util.ResourceBundle;

public class MainController implements Initializable {

    @FXML private TabPane tabPane;
    @FXML private Tab compileTab;
    @FXML private CompileController compileController;

    @FXML private Tab decompileTab;
    @FXML private DecompileController decompileController;

    @Override
    public void initialize(URL url, ResourceBundle bundle) {

    }
}