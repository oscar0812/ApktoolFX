.class Lorg/telegram/messenger/MessagesController$122$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$122;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$122;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$122;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$122;

    .prologue
    .line 7570
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7573
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$122;->val$finalUpdate:Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->blocked:Z

    if-eqz v0, :cond_1

    .line 7574
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$122;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$122;->val$finalUpdate:Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7575
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$122;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$122;->val$finalUpdate:Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7580
    :cond_0
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7581
    return-void

    .line 7578
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$122;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$122$1;->this$1:Lorg/telegram/messenger/MessagesController$122;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$122;->val$finalUpdate:Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;->user_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
