.class Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->cancelButtonPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;

    .prologue
    .line 789
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;->this$3:Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;->this$3:Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;->this$3:Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1$1;->this$3:Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2$1;->this$2:Lorg/telegram/ui/Components/ChatAttachAlert$11$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v0

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    .line 795
    :cond_0
    return-void
.end method
