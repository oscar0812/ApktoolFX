.class public abstract Lorg/telegram/tgnet/TLRPC$Bool;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Bool"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7358
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7361
    const/4 v0, 0x0

    .line 7362
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Bool;
    sparse-switch p1, :sswitch_data_0

    .line 7370
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 7371
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Bool"

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

    .line 7364
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Bool;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;-><init>()V

    .line 7365
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Bool;
    goto :goto_0

    .line 7367
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Bool;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Bool;
    goto :goto_0

    .line 7373
    :cond_0
    if-eqz v0, :cond_1

    .line 7374
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Bool;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7376
    :cond_1
    return-object v0

    .line 7362
    nop

    :sswitch_data_0
    .sparse-switch
        -0x668d8a4b -> :sswitch_0
        -0x438668c9 -> :sswitch_1
    .end sparse-switch
.end method
