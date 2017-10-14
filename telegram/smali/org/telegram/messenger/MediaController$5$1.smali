.class Lorg/telegram/messenger/MediaController$5$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$5;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$5;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$5;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$5;

    .prologue
    .line 859
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iput p2, p0, Lorg/telegram/messenger/MediaController$5$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 862
    iget v1, p0, Lorg/telegram/messenger/MediaController$5$1;->val$state:I

    if-ne v1, v3, :cond_5

    .line 863
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-nez v1, :cond_3

    .line 864
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 868
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v0

    .line 869
    .local v0, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->pause()V

    .line 872
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MediaController;->access$2302(Lorg/telegram/messenger/MediaController;Z)Z

    .line 882
    .end local v0    # "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    :cond_2
    :goto_1
    return-void

    .line 865
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2100(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$2200(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 866
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto :goto_0

    .line 873
    :cond_5
    iget v1, p0, Lorg/telegram/messenger/MediaController$5$1;->val$state:I

    if-nez v1, :cond_6

    .line 874
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MediaController;->access$2302(Lorg/telegram/messenger/MediaController;Z)Z

    goto :goto_1

    .line 875
    :cond_6
    iget v1, p0, Lorg/telegram/messenger/MediaController$5$1;->val$state:I

    if-ne v1, v4, :cond_2

    .line 876
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v0

    .line 877
    .restart local v0    # "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v0, :cond_7

    .line 878
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->pause()V

    .line 880
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/MediaController;->access$2302(Lorg/telegram/messenger/MediaController;Z)Z

    goto :goto_1
.end method
