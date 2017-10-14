.class public abstract Lorg/telegram/tgnet/TLRPC$InputStickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputStickerSet"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J

.field public short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13320
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13326
    const/4 v0, 0x0

    .line 13327
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    sparse-switch p1, :sswitch_data_0

    .line 13338
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 13339
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputStickerSet"

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

    .line 13329
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    .line 13330
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    goto :goto_0

    .line 13332
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 13333
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    goto :goto_0

    .line 13335
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    goto :goto_0

    .line 13341
    :cond_0
    if-eqz v0, :cond_1

    .line 13342
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13344
    :cond_1
    return-object v0

    .line 13327
    nop

    :sswitch_data_0
    .sparse-switch
        -0x79e33760 -> :sswitch_2
        -0x62185d97 -> :sswitch_1
        -0x49d46b -> :sswitch_0
    .end sparse-switch
.end method
