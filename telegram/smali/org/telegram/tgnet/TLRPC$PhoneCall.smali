.class public abstract Lorg/telegram/tgnet/TLRPC$PhoneCall;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhoneCall"
.end annotation


# instance fields
.field public access_hash:J

.field public admin_id:I

.field public alternative_connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field public connection:Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

.field public date:I

.field public duration:I

.field public flags:I

.field public g_a_hash:[B

.field public g_a_or_b:[B

.field public g_b:[B

.field public id:J

.field public key_fingerprint:J

.field public need_debug:Z

.field public need_rating:Z

.field public participant_id:I

.field public protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

.field public reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

.field public receive_date:I

.field public start_date:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8337
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 8348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 8359
    const/4 v0, 0x0

    .line 8360
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    sparse-switch p1, :sswitch_data_0

    .line 8380
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 8381
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PhoneCall"

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

    .line 8362
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;-><init>()V

    .line 8363
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_0

    .line 8365
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;-><init>()V

    .line 8366
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_0

    .line 8368
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallEmpty;-><init>()V

    .line 8369
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_0

    .line 8371
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;-><init>()V

    .line 8372
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_0

    .line 8374
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;-><init>()V

    .line 8375
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_0

    .line 8377
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_0

    .line 8383
    :cond_0
    if-eqz v0, :cond_1

    .line 8384
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCall;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 8386
    :cond_1
    return-object v0

    .line 8360
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c89e31c -> :sswitch_0
        -0x195499 -> :sswitch_1
        0x1b8f4ad1 -> :sswitch_4
        0x50ca4de1 -> :sswitch_5
        0x5366c915 -> :sswitch_2
        0x6d003d3f -> :sswitch_3
    .end sparse-switch
.end method
