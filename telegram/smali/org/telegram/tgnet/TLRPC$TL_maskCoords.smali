.class public Lorg/telegram/tgnet/TLRPC$TL_maskCoords;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_maskCoords"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public n:I

.field public x:D

.field public y:D

.field public zoom:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12515
    const v0, -0x5129244e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12514
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_maskCoords;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 12523
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->constructor:I

    if-eq v1, p1, :cond_1

    .line 12524
    if-eqz p2, :cond_0

    .line 12525
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_maskCoords"

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

    .line 12527
    :cond_0
    const/4 v0, 0x0

    .line 12532
    :goto_0
    return-object v0

    .line 12530
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;-><init>()V

    .line 12531
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_maskCoords;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12536
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    .line 12537
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    .line 12538
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    .line 12539
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    .line 12540
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12543
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12544
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12545
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 12546
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 12547
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 12548
    return-void
.end method
