.class public abstract Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecentMeUrl"
.end annotation


# instance fields
.field public chat_id:I

.field public chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field public url:Ljava/lang/String;

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9234
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9242
    const/4 v0, 0x0

    .line 9243
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    sparse-switch p1, :sswitch_data_0

    .line 9260
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 9261
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in RecentMeUrl"

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

    .line 9245
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;-><init>()V

    .line 9246
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    goto :goto_0

    .line 9248
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlStickerSet;-><init>()V

    .line 9249
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    goto :goto_0

    .line 9251
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUnknown;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUnknown;-><init>()V

    .line 9252
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    goto :goto_0

    .line 9254
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;-><init>()V

    .line 9255
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    goto :goto_0

    .line 9257
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlUser;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
    goto :goto_0

    .line 9263
    :cond_0
    if-eqz v0, :cond_1

    .line 9264
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9266
    :cond_1
    return-object v0

    .line 9243
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7243ccca -> :sswitch_4
        -0x5fe4dd07 -> :sswitch_0
        -0x43f5a824 -> :sswitch_1
        -0x14b6f7e3 -> :sswitch_3
        0x46e1d13d -> :sswitch_2
    .end sparse-switch
.end method
