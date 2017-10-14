.class Lorg/telegram/messenger/MessagesController$65$1$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$65$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$65$1;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$65$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/MessagesController$65$1;

    .prologue
    .line 4024
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$65$1$1;->this$2:Lorg/telegram/messenger/MessagesController$65$1;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$65$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4027
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$65$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 4028
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    if-eqz v1, :cond_0

    .line 4030
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    if-eqz v2, :cond_1

    .line 4031
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 4035
    .local v0, "newCount":I
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$65$1$1;->this$2:Lorg/telegram/messenger/MessagesController$65$1;

    iget-wide v4, v3, Lorg/telegram/messenger/MessagesController$65$1;->val$dialog_id:J

    invoke-virtual {v2, v4, v5, v0}, Lorg/telegram/messenger/MessagesStorage;->resetMentionsCount(JI)V

    .line 4037
    .end local v0    # "newCount":I
    :cond_0
    return-void

    .line 4033
    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0    # "newCount":I
    goto :goto_0
.end method
