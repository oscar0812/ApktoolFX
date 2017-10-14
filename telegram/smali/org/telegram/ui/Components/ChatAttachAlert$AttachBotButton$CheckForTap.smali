.class final Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    .param p2, "x1"    # Lorg/telegram/ui/Components/ChatAttachAlert$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$002(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$104(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;->currentPressCount:I

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForTap;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$CheckForLongPress;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    return-void
.end method
