.class Lorg/telegram/ui/ChannelRightsEditActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelRightsEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelRightsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelRightsEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelRightsEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 215
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->finishFragment()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    if-ne p1, v2, :cond_0

    .line 218
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v3

    if-nez v3, :cond_6

    .line 219
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    .line 224
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 225
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 226
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    .line 227
    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    .line 228
    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    .line 229
    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v4

    .line 226
    invoke-interface {v3, v1, v2, v4}, Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V

    .line 247
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->finishFragment()V

    goto/16 :goto_0

    .line 222
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v4

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    goto/16 :goto_1

    .line 231
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 232
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$300(Lorg/telegram/ui/ChannelRightsEditActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-static {v3, v4, v5, v6, v2}, Lorg/telegram/messenger/MessagesController;->setUserBannedRole(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eqz v2, :cond_7

    .line 235
    const/4 v0, 0x0

    .line 243
    .local v0, "rights":I
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)V

    goto :goto_2

    .line 236
    .end local v0    # "rights":I
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    .line 237
    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    if-eqz v2, :cond_9

    .line 238
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "rights":I
    goto :goto_3

    .line 240
    .end local v0    # "rights":I
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ChannelRightsEditActivity$1;->this$0:Lorg/telegram/ui/ChannelRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelRightsEditActivity;->access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v2

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    .line 241
    const/4 v0, 0x2

    .restart local v0    # "rights":I
    goto :goto_3
.end method
