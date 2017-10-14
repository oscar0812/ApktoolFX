.class public Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_cdnFileHash"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public hash:[B

.field public limit:I

.field public offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20450
    const v0, 0x77eec38f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20449
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20457
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->constructor:I

    if-eq v1, p1, :cond_1

    .line 20458
    if-eqz p2, :cond_0

    .line 20459
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_cdnFileHash"

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

    .line 20461
    :cond_0
    const/4 v0, 0x0

    .line 20466
    :goto_0
    return-object v0

    .line 20464
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;-><init>()V

    .line 20465
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 20470
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->offset:I

    .line 20471
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->limit:I

    .line 20472
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->hash:[B

    .line 20473
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20476
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20477
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20478
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20479
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 20480
    return-void
.end method
