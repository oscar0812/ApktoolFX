.class Lorg/telegram/messenger/MessagesStorage$7$5;
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

.field final synthetic val$inputChannel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field final synthetic val$newDialogType:I

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$7;IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$7;

    .prologue
    .line 801
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->this$1:Lorg/telegram/messenger/MessagesStorage$7;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$channelId:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$newDialogType:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$taskId:J

    iput-object p6, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$inputChannel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 804
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$channelId:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$newDialogType:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$taskId:J

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$7$5;->val$inputChannel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    .line 805
    return-void
.end method
