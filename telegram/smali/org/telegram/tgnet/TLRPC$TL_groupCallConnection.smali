.class public Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_groupCallConnection"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:J

.field public ip:Ljava/lang/String;

.field public ipv6:Ljava/lang/String;

.field public port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16700
    const v0, 0x40732163

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16699
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 16708
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->constructor:I

    if-eq v1, p1, :cond_1

    .line 16709
    if-eqz p2, :cond_0

    .line 16710
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_groupCallConnection"

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

    .line 16712
    :cond_0
    const/4 v0, 0x0

    .line 16717
    :goto_0
    return-object v0

    .line 16715
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;-><init>()V

    .line 16716
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16721
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->id:J

    .line 16722
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->ip:Ljava/lang/String;

    .line 16723
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->ipv6:Ljava/lang/String;

    .line 16724
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->port:I

    .line 16725
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16728
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16729
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 16730
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16731
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->ipv6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16732
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallConnection;->port:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16733
    return-void
.end method
