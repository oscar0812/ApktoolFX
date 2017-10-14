.class Lorg/telegram/messenger/FileLoader$3$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/FileLoader$3;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/FileLoader$3;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;F)V
    .locals 3
    .param p1, "operation"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p2, "progress"    # F

    .prologue
    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$3;->val$location:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-boolean v2, v2, Lorg/telegram/messenger/FileLoader$3;->val$encrypted:Z

    invoke-interface {v0, v1, p2, v2}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileUploadProgressChanged(Ljava/lang/String;FZ)V

    .line 249
    :cond_0
    return-void
.end method

.method public didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 2
    .param p1, "operation"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 210
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$800(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/FileLoader$3$1$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoader$3$1$2;-><init>(Lorg/telegram/messenger/FileLoader$3$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V
    .locals 8
    .param p1, "operation"    # Lorg/telegram/messenger/FileUploadOperation;
    .param p2, "inputFile"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p3, "inputEncryptedFile"    # Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .param p4, "key"    # [B
    .param p5, "iv"    # [B

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$3$1;->this$1:Lorg/telegram/messenger/FileLoader$3;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$3;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$800(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/FileLoader$3$1$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/FileLoader$3$1$1;-><init>(Lorg/telegram/messenger/FileLoader$3$1;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[BLorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
