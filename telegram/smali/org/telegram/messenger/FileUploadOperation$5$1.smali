.class Lorg/telegram/messenger/FileUploadOperation$5$1;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/FileUploadOperation$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/FileUploadOperation$5;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$5$1;->this$1:Lorg/telegram/messenger/FileUploadOperation$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$5$1;->this$1:Lorg/telegram/messenger/FileUploadOperation$5;

    iget-object v0, v0, Lorg/telegram/messenger/FileUploadOperation$5;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$5$1;->this$1:Lorg/telegram/messenger/FileUploadOperation$5;

    iget-object v1, v1, Lorg/telegram/messenger/FileUploadOperation$5;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$1000(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$5$1;->this$1:Lorg/telegram/messenger/FileUploadOperation$5;

    iget-object v0, v0, Lorg/telegram/messenger/FileUploadOperation$5;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$100(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 529
    :cond_0
    return-void
.end method
