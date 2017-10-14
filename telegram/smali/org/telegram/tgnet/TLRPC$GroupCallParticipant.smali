.class public abstract Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupCallParticipant"
.end annotation


# instance fields
.field public date:I

.field public flags:I

.field public inviter_id:I

.field public member_tag_hash:[B

.field public readonly:Z

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22798
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 22807
    const/4 v0, 0x0

    .line 22808
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    sparse-switch p1, :sswitch_data_0

    .line 22819
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 22820
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in GroupCallParticipant"

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

    .line 22810
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantAdmin;-><init>()V

    .line 22811
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    goto :goto_0

    .line 22813
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantLeft;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantLeft;-><init>()V

    .line 22814
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    goto :goto_0

    .line 22816
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
    goto :goto_0

    .line 22822
    :cond_0
    if-eqz v0, :cond_1

    .line 22823
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 22825
    :cond_1
    return-object v0

    .line 22808
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a906596 -> :sswitch_0
        -0x5e9c8195 -> :sswitch_2
        0x419b0df2 -> :sswitch_1
    .end sparse-switch
.end method
