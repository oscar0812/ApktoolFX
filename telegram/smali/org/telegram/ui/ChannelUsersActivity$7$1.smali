.class Lorg/telegram/ui/ChannelUsersActivity$7$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelUsersActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelUsersActivity$7;

    .prologue
    .line 676
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$7$1;->this$1:Lorg/telegram/ui/ChannelUsersActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 679
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 680
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 681
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 682
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$7$1$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChannelUsersActivity$7$1$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$7$1;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 692
    .end local v0    # "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    :cond_0
    return-void
.end method
