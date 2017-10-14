.class public Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputBotInlineMessageID"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public access_hash:J

.field public dc_id:I

.field public id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17458
    const v0, -0x76f3c277

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17457
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17465
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->constructor:I

    if-eq v1, p1, :cond_1

    .line 17466
    if-eqz p2, :cond_0

    .line 17467
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_inputBotInlineMessageID"

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

    .line 17469
    :cond_0
    const/4 v0, 0x0

    .line 17474
    :goto_0
    return-object v0

    .line 17472
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;-><init>()V

    .line 17473
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 17478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->dc_id:I

    .line 17479
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->id:J

    .line 17480
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->access_hash:J

    .line 17481
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17484
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17485
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17486
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 17487
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 17488
    return-void
.end method
