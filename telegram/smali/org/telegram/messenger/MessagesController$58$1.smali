.class Lorg/telegram/messenger/MessagesController$58$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$58;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$58;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$58;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$58;

    .prologue
    .line 3060
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3067
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$58$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_help_recentMeUrls;

    .line 3068
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_help_recentMeUrls;
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_recentMeUrls;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3069
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_recentMeUrls;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3070
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3071
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$58$1;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_recentMeUrls;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3073
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3074
    return-void
.end method
