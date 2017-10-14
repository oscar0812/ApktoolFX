.class public Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateGroupCallParticipant"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14273
    const v0, 0x57eaec8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14272
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 14278
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    .line 14279
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 14280
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14283
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14284
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14285
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14286
    return-void
.end method
