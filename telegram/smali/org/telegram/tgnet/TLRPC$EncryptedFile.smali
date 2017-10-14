.class public abstract Lorg/telegram/tgnet/TLRPC$EncryptedFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncryptedFile"
.end annotation


# instance fields
.field public access_hash:J

.field public dc_id:I

.field public id:J

.field public key_fingerprint:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1802
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    sparse-switch p1, :sswitch_data_0

    .line 1819
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1820
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in EncryptedFile"

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

    .line 1813
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedFile;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedFile;-><init>()V

    .line 1814
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    goto :goto_0

    .line 1816
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedFileEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedFileEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    goto :goto_0

    .line 1822
    :cond_0
    if-eqz v0, :cond_1

    .line 1823
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1825
    :cond_1
    return-object v0

    .line 1811
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3de0b682 -> :sswitch_1
        0x4a70994c -> :sswitch_0
    .end sparse-switch
.end method
