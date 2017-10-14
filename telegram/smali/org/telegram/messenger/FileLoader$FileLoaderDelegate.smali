.class public interface abstract Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileLoaderDelegate"
.end annotation


# virtual methods
.method public abstract fileDidFailedLoad(Ljava/lang/String;I)V
.end method

.method public abstract fileDidFailedUpload(Ljava/lang/String;Z)V
.end method

.method public abstract fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
.end method

.method public abstract fileDidUploaded(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BJ)V
.end method

.method public abstract fileLoadProgressChanged(Ljava/lang/String;F)V
.end method

.method public abstract fileUploadProgressChanged(Ljava/lang/String;FZ)V
.end method
