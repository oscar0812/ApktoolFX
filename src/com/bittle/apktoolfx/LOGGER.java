package com.bittle.apktoolfx;

import brut.androlib.MainLogger;
import javafx.application.Platform;
import javafx.scene.control.ScrollPane;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;

public class LOGGER extends MainLogger {

    private static MainLogger instance = null;

    private static TextFlow log_text_area;
    private static ScrollPane log_scroll_pane;

    public static MainLogger getInstance() {
        if (instance == null) {
            instance = new LOGGER();
        }
        return instance;
    }

    public static void setGUIVars(TextFlow area, ScrollPane pane) {
        log_text_area = area;
        log_scroll_pane = pane;
    }

    @Override
    public void ERROR(Object msg) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + "\n", "error_text");
    }

    @Override
    public void SEVERE(Object msg) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + "\n", "severe_text");
    }

    @Override
    public void SEVERE(Object msg, Exception e) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + ", " + e + "\n", "severe_text");
    }

    @Override
    public void WARNING(Object msg) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + "\n", "error_text");
    }

    @Override
    public void WARNING(Object msg, Exception e) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + ", " + e + "\n", "warning_text");
    }

    @Override
    public void NORMAL(Object msg) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + "\n", "normal_text");
    }

    @Override
    public void INFO(Object msg) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea("I: " + msg + "\n", "info_text");
    }

    @Override
    public void FINE(Object msg) {
        if (!msg.toString().trim().isEmpty())
            appendToTextArea(msg + "\n", "fine_text");
    }

    private double prev = 0;
    private void appendToTextArea(Object a, String id) {
        // need thread to update log view
        Platform.runLater(() -> {
            Text text = new Text(a.toString());

            text.setId(id);
            log_text_area.getChildren().add(text);

            if(prev == 0 && log_text_area.getHeight() > 0.0){
                prev = log_text_area.getHeight();
            }

            if(log_text_area.getHeight() > prev){
                log_scroll_pane.setVvalue(1.0);
            }
        });
    }
}