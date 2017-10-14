.class Lorg/telegram/messenger/MessagesController$109$3$2$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$109$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/MessagesController$109$3$2;

.field final synthetic val$pushMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$109$3$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/messenger/MessagesController$109$3$2;

    .prologue
    .line 6149
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2;->this$3:Lorg/telegram/messenger/MessagesController$109$3$2;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2;->val$pushMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6152
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2;->val$pushMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6153
    new-instance v0, Lorg/telegram/messenger/MessagesController$109$3$2$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$109$3$2$2$1;-><init>(Lorg/telegram/messenger/MessagesController$109$3$2$2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6160
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$109$3$2$2;->this$3:Lorg/telegram/messenger/MessagesController$109$3$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$109$3$2;->this$2:Lorg/telegram/messenger/MessagesController$109$3;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$109$3;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 6161
    return-void
.end method
