.class Lorg/telegram/messenger/MessagesStorage$7$2;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesStorage$7;

.field final synthetic val$channelId:I

.field final synthetic val$newDialogType:I

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$7;IIJ)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$7;

    .prologue
    .line 742
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->this$1:Lorg/telegram/messenger/MessagesStorage$7;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->val$newDialogType:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->val$taskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 745
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->val$channelId:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->val$newDialogType:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$7$2;->val$taskId:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 746
    return-void
.end method
