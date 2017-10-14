.class public abstract Lorg/telegram/tgnet/TLRPC$PhotoSize;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhotoSize"
.end annotation


# instance fields
.field public bytes:[B

.field public h:I

.field public location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public size:I

.field public type:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21329
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21338
    const/4 v0, 0x0

    .line 21339
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    sparse-switch p1, :sswitch_data_0

    .line 21350
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 21351
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in PhotoSize"

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

    .line 21341
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 21342
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :goto_0

    .line 21344
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 21345
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :goto_0

    .line 21347
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :goto_0

    .line 21353
    :cond_0
    if-eqz v0, :cond_1

    .line 21354
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 21356
    :cond_1
    return-object v0

    .line 21339
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1658cb06 -> :sswitch_2
        0xe17e23c -> :sswitch_1
        0x77bfb61b -> :sswitch_0
    .end sparse-switch
.end method
