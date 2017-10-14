.class Lorg/telegram/messenger/MessagesController$80$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$80;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$80;

.field final synthetic val$updates:Lorg/telegram/tgnet/TLRPC$Updates;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$80;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$80;

    .prologue
    .line 4683
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$80$2;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$80$2;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4686
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$2;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$80$2;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 4687
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$2;->this$1:Lorg/telegram/messenger/MessagesController$80;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$80$2;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 4688
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$2;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$2;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4689
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80$2;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4693
    :goto_0
    return-void

    .line 4691
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
