.class Lorg/telegram/messenger/SecretChatHelper$7$2;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SecretChatHelper$7;

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$7;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/SecretChatHelper$7;

    .prologue
    .line 1341
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$7$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$7;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$7$2;->val$messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1344
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$7$2;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1345
    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$7$2;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1346
    .local v1, "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 1347
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    iput-boolean v5, v2, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    .line 1348
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lorg/telegram/messenger/SendMessagesHelper;->retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    .end local v1    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v2    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return-void
.end method
