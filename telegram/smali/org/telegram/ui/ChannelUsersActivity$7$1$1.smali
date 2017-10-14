.class Lorg/telegram/ui/ChannelUsersActivity$7$1$1;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity$7$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelUsersActivity$7$1;

.field final synthetic val$updates:Lorg/telegram/tgnet/TLRPC$Updates;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity$7$1;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChannelUsersActivity$7$1;

    .prologue
    .line 683
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$7$1$1;->this$2:Lorg/telegram/ui/ChannelUsersActivity$7$1;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$7$1$1;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 686
    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$7$1$1;->val$updates:Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 687
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 688
    return-void
.end method
