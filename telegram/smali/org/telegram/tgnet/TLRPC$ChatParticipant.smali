.class public abstract Lorg/telegram/tgnet/TLRPC$ChatParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChatParticipant"
.end annotation


# instance fields
.field public date:I

.field public inviter_id:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19269
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19275
    const/4 v0, 0x0

    .line 19276
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    sparse-switch p1, :sswitch_data_0

    .line 19287
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 19288
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in ChatParticipant"

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

    .line 19278
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    .line 19279
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_0

    .line 19281
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;-><init>()V

    .line 19282
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_0

    .line 19284
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_0

    .line 19290
    :cond_0
    if-eqz v0, :cond_1

    .line 19291
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19293
    :cond_1
    return-object v0

    .line 19276
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3728b6c2 -> :sswitch_0
        -0x25ecac76 -> :sswitch_1
        -0x1d291bca -> :sswitch_2
    .end sparse-switch
.end method
