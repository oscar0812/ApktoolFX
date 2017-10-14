.class public abstract Lorg/telegram/tgnet/TLRPC$InputFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputFile"
.end annotation


# instance fields
.field public id:J

.field public md5_checksum:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21492
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21499
    const/4 v0, 0x0

    .line 21500
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    sparse-switch p1, :sswitch_data_0

    .line 21508
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 21509
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in InputFile"

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

    .line 21502
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    .line 21503
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    goto :goto_0

    .line 21505
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    goto :goto_0

    .line 21511
    :cond_0
    if-eqz v0, :cond_1

    .line 21512
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 21514
    :cond_1
    return-object v0

    .line 21500
    nop

    :sswitch_data_0
    .sparse-switch
        -0xad00d81 -> :sswitch_1
        -0x5b0f44b -> :sswitch_0
    .end sparse-switch
.end method
