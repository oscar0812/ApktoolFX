.class Lorg/telegram/messenger/MessagesController$109$3$2$2$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$109$3$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lorg/telegram/messenger/MessagesController$109$3$2$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$109$3$2$2;)V
    .locals 0
    .param p1, "this$4"    # Lorg/telegram/messenger/MessagesController$109$3$2$2;

    .prologue
    .line 6153
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2$1;->this$4:Lorg/telegram/messenger/MessagesController$109$3$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6156
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2$1;->this$4:Lorg/telegram/messenger/MessagesController$109$3$2$2;

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$109$3$2$2;->val$pushMessages:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2$1;->this$4:Lorg/telegram/messenger/MessagesController$109$3$2$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$109$3$2$2;->this$3:Lorg/telegram/messenger/MessagesController$109$3$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$109$3$2;->this$2:Lorg/telegram/messenger/MessagesController$109$3;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$109$3;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;Z)V

    .line 6157
    return-void

    .line 6156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
