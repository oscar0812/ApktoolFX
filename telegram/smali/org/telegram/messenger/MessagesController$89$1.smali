.class Lorg/telegram/messenger/MessagesController$89$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$89;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$89;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$89;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$89;

    .prologue
    .line 4913
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$89$1;->this$1:Lorg/telegram/messenger/MessagesController$89;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4916
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$89$1;->this$1:Lorg/telegram/messenger/MessagesController$89;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$89;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$89$1;->this$1:Lorg/telegram/messenger/MessagesController$89;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$89;->val$chat_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 4917
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$89$1;->this$1:Lorg/telegram/messenger/MessagesController$89;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$89;->val$userName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4918
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 4922
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$89$1;->this$1:Lorg/telegram/messenger/MessagesController$89;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$89;->val$userName:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 4923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4924
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4925
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4926
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x2000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4927
    return-void

    .line 4920
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    :cond_0
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v2, v2, -0x41

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    goto :goto_0
.end method
