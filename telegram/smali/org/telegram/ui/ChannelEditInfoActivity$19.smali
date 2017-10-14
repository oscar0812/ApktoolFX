.class Lorg/telegram/ui/ChannelEditInfoActivity$19;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->checkUserName(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 1122
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$19;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$19;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1125
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 1126
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$19;->val$name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 1127
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$19;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$100(Lorg/telegram/ui/ChannelEditInfoActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1128
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$19;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChannelEditInfoActivity$19$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$19$1;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity$19;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$3202(Lorg/telegram/ui/ChannelEditInfoActivity;I)I

    .line 1157
    return-void
.end method
