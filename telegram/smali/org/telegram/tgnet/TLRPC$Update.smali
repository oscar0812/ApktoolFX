.class public abstract Lorg/telegram/tgnet/TLRPC$Update;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Update"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public available_min_id:I

.field public blocked:Z

.field public channel_id:I

.field public chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public chat_id:I

.field public chat_instance:J

.field public data:[B

.field public date:I

.field public dc_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dcOption;",
            ">;"
        }
    .end annotation
.end field

.field public difference:Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public enabled:Z

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public game_short_name:Ljava/lang/String;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public inbox_date:I

.field public inviter_id:I

.field public is_admin:Z

.field public key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

.field public last_name:Ljava/lang/String;

.field public masks:Z

.field public max_date:I

.field public max_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public offset:Ljava/lang/String;

.field public participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public phone:Ljava/lang/String;

.field public phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public pinned:Z

.field public popup:Z

.field public previous:Z

.field public pts:I

.field public pts_count:I

.field public qts:I

.field public query:Ljava/lang/String;

.field public query_id:J

.field public random_id:J

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field public type:Ljava/lang/String;

.field public user_id:I

.field public username:Ljava/lang/String;

.field public version:I

.field public views:I

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13758
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 13759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    .line 13792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->entities:Ljava/util/ArrayList;

    .line 13797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    .line 13808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->dc_options:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13816
    const/4 v0, 0x0

    .line 13817
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Update;
    sparse-switch p1, :sswitch_data_0

    .line 14014
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 14015
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Update"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13819
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    .line 13820
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13822
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;-><init>()V

    .line 13823
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13825
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;-><init>()V

    .line 13826
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13828
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;-><init>()V

    .line 13829
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13831
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;-><init>()V

    .line 13832
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13834
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;-><init>()V

    .line 13835
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13837
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;-><init>()V

    .line 13838
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13840
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .line 13841
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13843
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;-><init>()V

    .line 13844
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13846
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;-><init>()V

    .line 13847
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13849
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;-><init>()V

    .line 13850
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13852
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;-><init>()V

    .line 13853
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13855
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 13856
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13858
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;-><init>()V

    .line 13859
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13861
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;-><init>()V

    .line 13862
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13864
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    .line 13865
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13867
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;-><init>()V

    .line 13868
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 13870
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;-><init>()V

    .line 13871
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13873
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePtsChanged;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePtsChanged;-><init>()V

    .line 13874
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13876
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;-><init>()V

    .line 13877
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13879
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;-><init>()V

    .line 13880
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13882
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;-><init>()V

    .line 13883
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13885
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;-><init>()V

    .line 13886
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13888
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;-><init>()V

    .line 13889
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13891
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateFavedStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateFavedStickers;-><init>()V

    .line 13892
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13894
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;-><init>()V

    .line 13895
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13897
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;-><init>()V

    .line 13898
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13900
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;-><init>()V

    .line 13901
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13903
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;-><init>()V

    .line 13904
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13906
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;-><init>()V

    .line 13907
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13909
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;-><init>()V

    .line 13910
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13912
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;-><init>()V

    .line 13913
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13915
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 13916
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13918
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;-><init>()V

    .line 13919
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13921
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPack;-><init>()V

    .line 13922
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13924
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;-><init>()V

    .line 13925
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13927
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;-><init>()V

    .line 13928
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13930
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;-><init>()V

    .line 13931
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13933
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;-><init>()V

    .line 13934
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13936
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateConfig;-><init>()V

    .line 13937
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13939
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;-><init>()V

    .line 13940
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13942
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;-><init>()V

    .line 13943
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13945
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelAvailableMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelAvailableMessages;-><init>()V

    .line 13946
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13948
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;-><init>()V

    .line 13949
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13951
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;-><init>()V

    .line 13952
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13954
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;-><init>()V

    .line 13955
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13957
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;-><init>()V

    .line 13958
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13960
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 13961
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13963
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;-><init>()V

    .line 13964
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13966
    :sswitch_31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;-><init>()V

    .line 13967
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13969
    :sswitch_32
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactsReset;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactsReset;-><init>()V

    .line 13970
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13972
    :sswitch_33
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;-><init>()V

    .line 13973
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13975
    :sswitch_34
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelWebPage;-><init>()V

    .line 13976
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13978
    :sswitch_35
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;-><init>()V

    .line 13979
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13981
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;-><init>()V

    .line 13982
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13984
    :sswitch_37
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;-><init>()V

    .line 13985
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13987
    :sswitch_38
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;-><init>()V

    .line 13988
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13990
    :sswitch_39
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;-><init>()V

    .line 13991
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13993
    :sswitch_3a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;-><init>()V

    .line 13994
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13996
    :sswitch_3b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateLangPackTooLong;-><init>()V

    .line 13997
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 13999
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;-><init>()V

    .line 14000
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 14002
    :sswitch_3d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;-><init>()V

    .line 14003
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 14005
    :sswitch_3e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 14006
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 14008
    :sswitch_3f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;-><init>()V

    .line 14009
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 14011
    :sswitch_40
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 14017
    :cond_0
    if-eqz v0, :cond_1

    .line 14018
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Update;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 14020
    :cond_1
    return-object v0

    .line 13817
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f1317e6 -> :sswitch_39
        -0x7a017913 -> :sswitch_1c
        -0x7676c4bb -> :sswitch_23
        -0x71a1678d -> :sswitch_37
        -0x6c8acbe2 -> :sswitch_31
        -0x6acec4f4 -> :sswitch_36
        -0x67a6db8b -> :sswitch_21
        -0x675ed4b5 -> :sswitch_11
        -0x669e02a4 -> :sswitch_2f
        -0x65bdd3e0 -> :sswitch_2d
        -0x659a15e1 -> :sswitch_1b
        -0x62d1983b -> :sswitch_30
        -0x5df24f1b -> :sswitch_0
        -0x5dd622fa -> :sswitch_27
        -0x58ccd48d -> :sswitch_29
        -0x54f094e2 -> :sswitch_2b
        -0x4b5d1773 -> :sswitch_1d
        -0x496fe6a7 -> :sswitch_24
        -0x492ba9aa -> :sswitch_33
        -0x413d9711 -> :sswitch_13
        -0x3c8ade37 -> :sswitch_35
        -0x28ee5d34 -> :sswitch_8
        -0x27350973 -> :sswitch_2c
        -0x1bfc8f5d -> :sswitch_16
        -0x1aee6693 -> :sswitch_18
        -0x18cab81f -> :sswitch_5
        -0x15b4f1a4 -> :sswitch_1a
        -0x14fb9805 -> :sswitch_1e
        -0x141b97e7 -> :sswitch_20
        -0x11d44697 -> :sswitch_28
        -0x11c4d8d6 -> :sswitch_26
        -0x62d85a6 -> :sswitch_3
        0x57eaec8 -> :sswitch_a
        0x7761198 -> :sswitch_40
        0xbb2d201 -> :sswitch_3d
        0xe48f964 -> :sswitch_17
        0x10c2404b -> :sswitch_3b
        0x12b9417b -> :sswitch_9
        0x12bcbd9a -> :sswitch_f
        0x1710f156 -> :sswitch_4
        0x1b3f4df7 -> :sswitch_38
        0x1bfbd823 -> :sswitch_10
        0x1f2b0afd -> :sswitch_e
        0x2575bbb9 -> :sswitch_14
        0x25d6c9c7 -> :sswitch_c
        0x2f2f21bf -> :sswitch_7
        0x3354678f -> :sswitch_12
        0x38fe25b7 -> :sswitch_3c
        0x40771900 -> :sswitch_34
        0x4214f37f -> :sswitch_3e
        0x43ae3dec -> :sswitch_d
        0x4e90bfd6 -> :sswitch_b
        0x54826690 -> :sswitch_25
        0x56022f4d -> :sswitch_22
        0x571d2742 -> :sswitch_1
        0x5a68e3f7 -> :sswitch_2e
        0x5c486927 -> :sswitch_1f
        0x62ba04d9 -> :sswitch_6
        0x688a30aa -> :sswitch_3a
        0x68c13933 -> :sswitch_3f
        0x6e5f8c22 -> :sswitch_15
        0x6e947941 -> :sswitch_2
        0x7084a7be -> :sswitch_32
        0x70db6837 -> :sswitch_2a
        0x7f891213 -> :sswitch_19
    .end sparse-switch
.end method
