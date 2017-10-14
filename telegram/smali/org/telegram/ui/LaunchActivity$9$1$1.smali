.class Lorg/telegram/ui/LaunchActivity$9$1$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LaunchActivity$9$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$9$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LaunchActivity$9$1;

    .prologue
    .line 1351
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$9$1;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;Z)V
    .locals 12
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "param"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DialogsActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p2, "dids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1355
    .local v8, "did":J
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;-><init>()V

    .line 1356
    .local v3, "inputMediaGame":Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    .line 1357
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$9$1;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$9;->val$game:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputGame;->short_name:Ljava/lang/String;

    .line 1358
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$InputGame;->bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1359
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    long-to-int v2, v8

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V

    .line 1361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1362
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "scrollToTopOnResume"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1363
    long-to-int v11, v8

    .line 1364
    .local v11, "lower_part":I
    const/16 v1, 0x20

    shr-long v4, v8, v1

    long-to-int v10, v4

    .line 1365
    .local v10, "high_id":I
    if-eqz v11, :cond_4

    .line 1366
    const/4 v1, 0x1

    if-ne v10, v1, :cond_2

    .line 1367
    const-string/jumbo v1, "chat_id"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1378
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1380
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$9$1;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1382
    :cond_1
    return-void

    .line 1369
    :cond_2
    if-lez v11, :cond_3

    .line 1370
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1371
    :cond_3
    if-gez v11, :cond_0

    .line 1372
    const-string/jumbo v1, "chat_id"

    neg-int v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1376
    :cond_4
    const-string/jumbo v1, "enc_id"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
