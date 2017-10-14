.class public abstract Lorg/telegram/tgnet/TLRPC$Chat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Chat"
.end annotation


# instance fields
.field public access_hash:J

.field public address:Ljava/lang/String;

.field public admin:Z

.field public admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

.field public admins_enabled:Z

.field public banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

.field public broadcast:Z

.field public checked_in:Z

.field public creator:Z

.field public date:I

.field public deactivated:Z

.field public democracy:Z

.field public explicit_content:Z

.field public flags:I

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public id:I

.field public kicked:Z

.field public left:Z

.field public megagroup:Z

.field public migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public min:Z

.field public moderator:Z

.field public participants_count:I

.field public photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public restricted:Z

.field public restriction_reason:Ljava/lang/String;

.field public signatures:Z

.field public title:Ljava/lang/String;

.field public until_date:I

.field public username:Ljava/lang/String;

.field public venue:Ljava/lang/String;

.field public verified:Z

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19787
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19823
    const/4 v0, 0x0

    .line 19824
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Chat;
    sparse-switch p1, :sswitch_data_0

    .line 19868
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 19869
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Chat"

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

    .line 19826
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;-><init>()V

    .line 19827
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19829
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;-><init>()V

    .line 19830
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19832
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

    .line 19833
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19835
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer67;-><init>()V

    .line 19836
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19838
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;-><init>()V

    .line 19839
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19841
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChat;-><init>()V

    .line 19842
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19844
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;-><init>()V

    .line 19845
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19847
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;-><init>()V

    .line 19848
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19850
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;-><init>()V

    .line 19851
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19853
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_old;-><init>()V

    .line 19854
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19856
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_old;-><init>()V

    .line 19857
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19859
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;-><init>()V

    .line 19860
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19862
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    .line 19863
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19865
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_0

    .line 19871
    :cond_0
    if-eqz v0, :cond_1

    .line 19872
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19874
    :cond_1
    return-object v0

    .line 19824
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ac887b1 -> :sswitch_3
        -0x645d2800 -> :sswitch_b
        -0x5eb235ae -> :sswitch_8
        -0x26e322ac -> :sswitch_d
        -0x4f333bf -> :sswitch_0
        0x7328bdb -> :sswitch_7
        0xcb44b1c -> :sswitch_c
        0x289da732 -> :sswitch_2
        0x2d85832c -> :sswitch_6
        0x4b1b7506 -> :sswitch_4
        0x678e9587 -> :sswitch_9
        0x6e9c9bc7 -> :sswitch_a
        0x7312bc48 -> :sswitch_1
        0x75eaea5a -> :sswitch_5
    .end sparse-switch
.end method
