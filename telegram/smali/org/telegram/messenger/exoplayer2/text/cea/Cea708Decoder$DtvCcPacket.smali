.class final Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DtvCcPacket"
.end annotation


# instance fields
.field currentIndex:I

.field public final packetData:[B

.field public final packetSize:I

.field public final sequenceNumber:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "sequenceNumber"    # I
    .param p2, "packetSize"    # I

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    .line 763
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    .line 764
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    .line 766
    return-void
.end method
