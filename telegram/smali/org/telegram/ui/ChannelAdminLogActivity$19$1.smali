.class Lorg/telegram/ui/ChannelAdminLogActivity$19$1;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$19;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$19;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$19;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$19;

    .prologue
    .line 1491
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$19;

    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1494
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 1496
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1497
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$19;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$19;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4702(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1498
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$19;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$19;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$5400(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/app/Dialog;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/AdminLogFilterAlert;

    if-eqz v1, :cond_0

    .line 1499
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$19;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$19;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$5500(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AdminLogFilterAlert;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$19$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$19;

    iget-object v2, v2, Lorg/telegram/ui/ChannelAdminLogActivity$19;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4700(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert;->setCurrentAdmins(Ljava/util/ArrayList;)V

    .line 1502
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;
    :cond_0
    return-void
.end method
