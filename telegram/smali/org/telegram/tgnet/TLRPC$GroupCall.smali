.class public abstract Lorg/telegram/tgnet/TLRPC$GroupCall;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GroupCall"
.end annotation


# instance fields
.field public access_hash:J

.field public admin_id:I

.field public channel_id:I

.field public connection:Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;

.field public date:I

.field public duration:I

.field public encryption_key:[B

.field public id:J

.field public protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

.field public reflector_group_tag:[B

.field public reflector_self_secret:[B

.field public reflector_self_tag:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GroupCall;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    sparse-switch p1, :sswitch_data_0

    .line 1227
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1228
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in GroupCall"

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

    .line 1218
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;-><init>()V

    .line 1219
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    goto :goto_0

    .line 1221
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCall;-><init>()V

    .line 1222
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    goto :goto_0

    .line 1224
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallPrivate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallPrivate;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GroupCall;
    goto :goto_0

    .line 1230
    :cond_0
    if-eqz v0, :cond_1

    .line 1231
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$GroupCall;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1233
    :cond_1
    return-object v0

    .line 1216
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3170df -> :sswitch_1
        -0x4bd1621f -> :sswitch_0
        -0x686cb9a -> :sswitch_2
    .end sparse-switch
.end method
