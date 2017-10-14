.class Lorg/telegram/messenger/MessagesStorage$7$6;
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

.field final synthetic val$finalRequest:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage$7;IJLorg/telegram/tgnet/TLObject;)V
    .locals 1
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesStorage$7;

    .prologue
    .line 820
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->this$1:Lorg/telegram/messenger/MessagesStorage$7;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->val$channelId:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->val$taskId:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->val$finalRequest:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 823
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->val$channelId:I

    const/4 v5, 0x1

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->val$taskId:J

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$7$6;->val$finalRequest:Lorg/telegram/tgnet/TLObject;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZJLorg/telegram/tgnet/TLObject;)V

    .line 824
    return-void
.end method
