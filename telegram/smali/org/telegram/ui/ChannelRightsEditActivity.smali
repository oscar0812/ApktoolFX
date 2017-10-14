.class public Lorg/telegram/ui/ChannelRightsEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelRightsEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;,
        Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private addAdminsRow:I

.field private addUsersRow:I

.field private adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

.field private banUsersRow:I

.field private bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

.field private canEdit:Z

.field private cantEditInfoRow:I

.field private changeInfoRow:I

.field private chatId:I

.field private currentType:I

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private delegate:Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

.field private deleteMessagesRow:I

.field private editMesagesRow:I

.field private embedLinksRow:I

.field private isDemocracy:Z

.field private isMegagroup:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

.field private myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

.field private pinMessagesRow:I

.field private postMessagesRow:I

.field private removeAdminRow:I

.field private removeAdminShadowRow:I

.field private rightsShadowRow:I

.field private rowCount:I

.field private sendMediaRow:I

.field private sendMessagesRow:I

.field private sendStickersRow:I

.field private untilDateRow:I

.field private viewMessagesRow:I


# direct methods
.method public constructor <init>(IILorg/telegram/tgnet/TLRPC$TL_channelAdminRights;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;IZ)V
    .locals 13
    .param p1, "userId"    # I
    .param p2, "channelId"    # I
    .param p3, "rightsAdmin"    # Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .param p4, "rightsBanned"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .param p5, "type"    # I
    .param p6, "edit"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 96
    iput p2, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->chatId:I

    .line 97
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 98
    move/from16 v0, p5

    iput v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->currentType:I

    .line 99
    move/from16 v0, p6

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->canEdit:Z

    .line 101
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->chatId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 102
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_0

    .line 103
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->isMegagroup:Z

    .line 104
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iput-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 106
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-nez v3, :cond_1

    .line 107
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 108
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v5, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v6, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v7, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v8, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v9, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v10, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v11, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    iput-boolean v12, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    iput-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    iput-boolean v12, v8, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    iput-boolean v12, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    iput-boolean v12, v6, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    iput-boolean v12, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    iput-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    iput-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    .line 112
    :cond_1
    if-nez p5, :cond_6

    .line 113
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 114
    if-nez p3, :cond_3

    .line 115
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    .line 116
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    .line 117
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    .line 118
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    .line 119
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    .line 120
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    .line 121
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    .line 122
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    .line 123
    const/4 v2, 0x0

    .line 158
    .local v2, "initialIsSet":Z
    :goto_0
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    .line 159
    if-nez p5, :cond_b

    .line 160
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->isMegagroup:Z

    if-eqz v3, :cond_a

    .line 161
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->changeInfoRow:I

    .line 162
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->deleteMessagesRow:I

    .line 163
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->banUsersRow:I

    .line 164
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->addUsersRow:I

    .line 165
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->pinMessagesRow:I

    .line 166
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->addAdminsRow:I

    .line 167
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->isDemocracy:Z

    .line 185
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->canEdit:Z

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    .line 186
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rightsShadowRow:I

    .line 187
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->removeAdminRow:I

    .line 188
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->removeAdminShadowRow:I

    .line 189
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->cantEditInfoRow:I

    .line 200
    :goto_2
    return-void

    .line 125
    .end local v2    # "initialIsSet":Z
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    .line 126
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    .line 128
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    .line 129
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    .line 131
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    .line 132
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    .line 133
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    .line 135
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->change_info:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->edit_messages:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->delete_messages:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->ban_users:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_users:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->invite_link:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->pin_messages:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->add_admins:Z

    if-eqz v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "initialIsSet":Z
    :goto_3
    goto/16 :goto_0

    .end local v2    # "initialIsSet":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 140
    :cond_6
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 141
    if-nez p4, :cond_8

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v5, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v6, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v7, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v8, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v9, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-object v10, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    iput-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    iput-boolean v11, v8, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    iput-boolean v11, v7, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    iput-boolean v11, v6, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    iput-boolean v11, v5, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    iput-boolean v11, v4, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    iput-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 156
    :goto_4
    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-nez v3, :cond_9

    :cond_7
    const/4 v2, 0x1

    .restart local v2    # "initialIsSet":Z
    :goto_5
    goto/16 :goto_0

    .line 146
    .end local v2    # "initialIsSet":Z
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 147
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 148
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 149
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    .line 150
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    .line 151
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    .line 152
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    .line 154
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-object/from16 v0, p4

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    goto :goto_4

    .line 156
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 169
    .restart local v2    # "initialIsSet":Z
    :cond_a
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->changeInfoRow:I

    .line 170
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->postMessagesRow:I

    .line 171
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->editMesagesRow:I

    .line 172
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->deleteMessagesRow:I

    .line 173
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->addUsersRow:I

    .line 174
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->addAdminsRow:I

    goto/16 :goto_1

    .line 176
    :cond_b
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    .line 177
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->viewMessagesRow:I

    .line 178
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->sendMessagesRow:I

    .line 179
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->sendMediaRow:I

    .line 180
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->sendStickersRow:I

    .line 181
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->embedLinksRow:I

    .line 182
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->untilDateRow:I

    goto/16 :goto_1

    .line 191
    :cond_c
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->removeAdminRow:I

    .line 192
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->removeAdminShadowRow:I

    .line 193
    if-nez p5, :cond_d

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->canEdit:Z

    if-nez v3, :cond_d

    .line 194
    const/4 v3, -0x1

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rightsShadowRow:I

    .line 195
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->cantEditInfoRow:I

    goto/16 :goto_2

    .line 197
    :cond_d
    iget v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rightsShadowRow:I

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->currentType:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelRightsEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->isMegagroup:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->changeInfoRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->postMessagesRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->editMesagesRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->deleteMessagesRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->addAdminsRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->banUsersRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->addUsersRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->pinMessagesRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->viewMessagesRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->sendMessagesRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->sendMediaRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->sendStickersRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->embedLinksRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->cantEditInfoRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChannelRightsEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->isDemocracy:Z

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->rightsShadowRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->chatId:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->removeAdminShadowRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->delegate:Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelRightsEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->canEdit:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->removeAdminRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelRightsEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelRightsEditActivity;

    .prologue
    .line 48
    iget v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->untilDateRow:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 204
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f020093

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 205
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 206
    iget v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->currentType:I

    if-nez v4, :cond_1

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "EditAdmin"

    const v6, 0x7f0701f5

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChannelRightsEditActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChannelRightsEditActivity$1;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 252
    iget-boolean v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->canEdit:Z

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 254
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f0200af

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 257
    .end local v2    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_0
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->fragmentView:Landroid/view/View;

    .line 258
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 261
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 262
    new-instance v1, Lorg/telegram/ui/ChannelRightsEditActivity$2;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v3, v4}, Lorg/telegram/ui/ChannelRightsEditActivity$2;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity;Landroid/content/Context;IZ)V

    .line 268
    .local v1, "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 269
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 270
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 271
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ChannelRightsEditActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelRightsEditActivity$3;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 483
    iget-object v3, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 209
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "UserRestrictions"

    const v6, 0x7f07060f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 272
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v1    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 697
    new-instance v9, Lorg/telegram/ui/ChannelRightsEditActivity$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelRightsEditActivity$4;-><init>(Lorg/telegram/ui/ChannelRightsEditActivity;)V

    .line 710
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x22

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusOnlineColor"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText"

    move-object v7, v9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/UserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelRightsEditActivity$ListAdapter;->notifyDataSetChanged()V

    .line 492
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;)V
    .locals 0
    .param p1, "channelRightsEditActivityDelegate"    # Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    .prologue
    .line 495
    iput-object p1, p0, Lorg/telegram/ui/ChannelRightsEditActivity;->delegate:Lorg/telegram/ui/ChannelRightsEditActivity$ChannelRightsEditActivityDelegate;

    .line 496
    return-void
.end method
