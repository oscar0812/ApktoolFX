.class Lorg/telegram/messenger/FileLoader$6$1;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/FileLoader$6;

.field final synthetic val$finalFileName:Ljava/lang/String;

.field final synthetic val$finalType:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader$6;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/FileLoader$6;

    .prologue
    .line 445
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalFileName:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;F)V
    .locals 2
    .param p1, "operation"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p2, "progress"    # F

    .prologue
    .line 464
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalFileName:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileLoadProgressChanged(Ljava/lang/String;F)V

    .line 467
    :cond_0
    return-void
.end method

.method public didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V
    .locals 5
    .param p1, "operation"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p2, "reason"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->access$1600(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalFileName:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidFailedLoad(Ljava/lang/String;I)V

    .line 460
    :cond_0
    return-void
.end method

.method public didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V
    .locals 5
    .param p1, "operation"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p2, "finalFile"    # Ljava/io/File;

    .prologue
    .line 448
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->access$700(Lorg/telegram/messenger/FileLoader;)Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalFileName:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalType:I

    invoke-interface {v0, v1, p2, v2}, Lorg/telegram/messenger/FileLoader$FileLoaderDelegate;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v0, v0, Lorg/telegram/messenger/FileLoader$6;->this$0:Lorg/telegram/messenger/FileLoader;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v1, v1, Lorg/telegram/messenger/FileLoader$6;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v2, v2, Lorg/telegram/messenger/FileLoader$6;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoader$6$1;->this$1:Lorg/telegram/messenger/FileLoader$6;

    iget-object v3, v3, Lorg/telegram/messenger/FileLoader$6;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$6$1;->val$finalFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->access$1600(Lorg/telegram/messenger/FileLoader;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 452
    return-void
.end method
