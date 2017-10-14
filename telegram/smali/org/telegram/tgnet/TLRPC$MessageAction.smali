.class public abstract Lorg/telegram/tgnet/TLRPC$MessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageAction"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public call_id:J

.field public channel_id:I

.field public chat_id:I

.field public currency:Ljava/lang/String;

.field public duration:I

.field public encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

.field public flags:I

.field public game_id:J

.field public inviter_id:I

.field public message:Ljava/lang/String;

.field public newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

.field public score:I

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl:I

.field public user_id:I

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9665
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9689
    const/4 v0, 0x0

    .line 9690
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    sparse-switch p1, :sswitch_data_0

    .line 9776
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 9777
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in MessageAction"

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

    .line 9692
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;-><init>()V

    .line 9693
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9695
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    .line 9696
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9698
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCustomAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCustomAction;-><init>()V

    .line 9699
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9701
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;-><init>()V

    .line 9702
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9704
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;-><init>()V

    .line 9705
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9707
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGroupCall;-><init>()V

    .line 9708
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9710
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;-><init>()V

    .line 9711
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9713
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    .line 9714
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9716
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;-><init>()V

    .line 9717
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9719
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;-><init>()V

    .line 9720
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9722
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    .line 9723
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9725
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;-><init>()V

    .line 9726
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9728
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    .line 9729
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9731
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    .line 9732
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9734
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;-><init>()V

    .line 9735
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9737
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;-><init>()V

    .line 9738
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9740
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;-><init>()V

    .line 9741
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 9743
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCheckin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCheckin;-><init>()V

    .line 9744
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9746
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;-><init>()V

    .line 9747
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9749
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;-><init>()V

    .line 9750
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9752
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    .line 9753
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9755
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;-><init>()V

    .line 9756
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9758
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;-><init>()V

    .line 9759
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9761
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;-><init>()V

    .line 9762
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9764
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;-><init>()V

    .line 9765
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9767
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    .line 9768
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9770
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;-><init>()V

    .line 9771
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9773
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCreate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCreate;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 9779
    :cond_0
    if-eqz v0, :cond_1

    .line 9780
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9782
    :cond_1
    return-object v0

    .line 9690
    :sswitch_data_0
    .sparse-switch
        -0x7f1ee581 -> :sswitch_16
        -0x6d58d78a -> :sswitch_1a
        -0x6b42c713 -> :sswitch_14
        -0x6a2d536e -> :sswitch_13
        -0x6a1c0411 -> :sswitch_15
        -0x604549fc -> :sswitch_7
        -0x599c7466 -> :sswitch_3
        -0x4faa1512 -> :sswitch_9
        -0x4d5164f4 -> :sswitch_b
        -0x4a5e31a6 -> :sswitch_17
        -0x49510850 -> :sswitch_19
        -0x142d6328 -> :sswitch_5
        -0x7630a18 -> :sswitch_12
        -0x51960aa -> :sswitch_2
        0xc7d53de -> :sswitch_11
        0x40699cd0 -> :sswitch_18
        0x4792929b -> :sswitch_6
        0x488a7337 -> :sswitch_a
        0x51bdb021 -> :sswitch_4
        0x55555550 -> :sswitch_d
        0x55555551 -> :sswitch_e
        0x55555552 -> :sswitch_10
        0x55555557 -> :sswitch_c
        0x555555f5 -> :sswitch_0
        0x555555f7 -> :sswitch_1
        0x5e3cfc4b -> :sswitch_f
        0x6f038ebc -> :sswitch_1b
        0x7fcb13a8 -> :sswitch_8
    .end sparse-switch
.end method
