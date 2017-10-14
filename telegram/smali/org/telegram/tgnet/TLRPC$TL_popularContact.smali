.class public Lorg/telegram/tgnet/TLRPC$TL_popularContact;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_popularContact"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public client_id:J

.field public importers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1057
    const v0, 0x5ce14175

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1056
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_popularContact;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1063
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->constructor:I

    if-eq v1, p1, :cond_1

    .line 1064
    if-eqz p2, :cond_0

    .line 1065
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_popularContact"

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

    .line 1067
    :cond_0
    const/4 v0, 0x0

    .line 1072
    :goto_0
    return-object v0

    .line 1070
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_popularContact;-><init>()V

    .line 1071
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_popularContact;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 1076
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->client_id:J

    .line 1077
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->importers:I

    .line 1078
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1081
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1082
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->client_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 1083
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->importers:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1084
    return-void
.end method
