.class public final Lorg/telegram/messenger/exoplayer2/text/dvb/DvbDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "DvbDecoder.java"


# instance fields
.field private final parser:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string/jumbo v3, "DvbDecoder"

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 37
    .local v0, "data":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 38
    .local v2, "subtitleCompositionPage":I
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 39
    .local v1, "subtitleAncillaryPage":I
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;

    invoke-direct {v3, v2, v1}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbDecoder;->parser:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbDecoder;->decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/dvb/DvbSubtitle;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .prologue
    .line 44
    if-eqz p3, :cond_0

    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbDecoder;->parser:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->reset()V

    .line 47
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbSubtitle;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbDecoder;->parser:Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbParser;->decode([BI)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/dvb/DvbSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method
