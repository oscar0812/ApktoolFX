.class public interface abstract Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileDownloadProgressListener"
.end annotation


# virtual methods
.method public abstract getObserverTag()I
.end method

.method public abstract onFailedDownload(Ljava/lang/String;)V
.end method

.method public abstract onProgressDownload(Ljava/lang/String;F)V
.end method

.method public abstract onProgressUpload(Ljava/lang/String;FZ)V
.end method

.method public abstract onSuccessDownload(Ljava/lang/String;)V
.end method
