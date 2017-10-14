package com.bittle.apktoolfx;

import brut.androlib.MainLogger;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage primaryStage) throws Exception{
        MainLogger.getInstance().setLogger(LOGGER.getInstance());

        FXMLLoader fxml = new FXMLLoader(getClass().getResource("MainFXML.fxml"));
        Parent root = fxml.load();
        primaryStage.setTitle("Apktool GUI");
        primaryStage.setScene(new Scene(root, 600, 400));
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
