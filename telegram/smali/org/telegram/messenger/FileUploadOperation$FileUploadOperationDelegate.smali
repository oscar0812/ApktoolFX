.class public interface abstract Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FileUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileUploadOperationDelegate"
.end annotation


# virtual methods
.method public abstract didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;F)V
.end method

.method public abstract didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V
.end method

.method public abstract didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V
.end method
