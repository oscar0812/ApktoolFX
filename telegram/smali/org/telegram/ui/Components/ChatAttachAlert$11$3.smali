.class Lorg/telegram/ui/Components/ChatAttachAlert$11$3;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$11;->shutterLongPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$11;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$11;

    .prologue
    .line 821
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$3;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$11$3;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$11;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 825
    return-void
.end method
