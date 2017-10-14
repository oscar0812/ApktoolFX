.class Lorg/telegram/messenger/query/SharedMediaQuery$2$1;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/SharedMediaQuery$2;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SharedMediaQuery$2;Lorg/telegram/tgnet/TLRPC$messages_Messages;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/SharedMediaQuery$2;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;->this$0:Lorg/telegram/messenger/query/SharedMediaQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 129
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$2$1;->val$res:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 130
    return-void
.end method
