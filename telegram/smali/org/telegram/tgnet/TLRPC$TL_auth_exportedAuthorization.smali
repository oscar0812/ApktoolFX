.class public Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_exportedAuthorization"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bytes:[B

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7399
    const v0, -0x206963d3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7398
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7405
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->constructor:I

    if-eq v1, p1, :cond_1

    .line 7406
    if-eqz p2, :cond_0

    .line 7407
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_auth_exportedAuthorization"

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

    .line 7409
    :cond_0
    const/4 v0, 0x0

    .line 7414
    :goto_0
    return-object v0

    .line 7412
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;-><init>()V

    .line 7413
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->id:I

    .line 7419
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->bytes:[B

    .line 7420
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7423
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7424
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7425
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportedAuthorization;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 7426
    return-void
.end method
