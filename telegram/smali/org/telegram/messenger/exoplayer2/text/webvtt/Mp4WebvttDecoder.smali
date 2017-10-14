.class public final Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "Mp4WebvttDecoder.java"


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I

.field private static final TYPE_sttg:I

.field private static final TYPE_vttc:I


# instance fields
.field private final builder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

.field private final sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "payl"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_payl:I

    .line 35
    const-string/jumbo v0, "sttg"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_sttg:I

    .line 36
    const-string/jumbo v0, "vttc"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_vttc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "Mp4WebvttDecoder"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 44
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->builder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 45
    return-void
.end method

.method private static parseVttCueBox(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;I)Lorg/telegram/messenger/exoplayer2/text/Cue;
    .locals 7
    .param p0, "sampleData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "builder"    # Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    .param p2, "remainingCueBoxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->reset()V

    .line 73
    :cond_0
    :goto_0
    if-lez p2, :cond_3

    .line 74
    const/16 v4, 0x8

    if-ge p2, v4, :cond_1

    .line 75
    new-instance v4, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string/jumbo v5, "Incomplete vtt cue box header found."

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 78
    .local v1, "boxSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 79
    .local v2, "boxType":I
    add-int/lit8 p2, p2, -0x8

    .line 80
    add-int/lit8 v3, v1, -0x8

    .line 81
    .local v3, "payloadLength":I
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-direct {v0, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 82
    .local v0, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 83
    sub-int/2addr p2, v3

    .line 84
    sget v4, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_sttg:I

    if-ne v2, v4, :cond_2

    .line 85
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    .line 86
    :cond_2
    sget v4, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_payl:I

    if-ne v2, v4, :cond_0

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 87
    invoke-static {v4, v5, p1, v6}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    goto :goto_0

    .line 93
    .end local v0    # "boxPayload":Ljava/lang/String;
    .end local v1    # "boxSize":I
    .end local v2    # "boxType":I
    .end local v3    # "payloadLength":I
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;->build()Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;

    move-result-object v4

    return-object v4
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
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BIZ)Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_2

    .line 55
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 56
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string/jumbo v4, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 59
    .local v0, "boxSize":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 60
    .local v1, "boxType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->TYPE_vttc:I

    if-ne v1, v3, :cond_1

    .line 61
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->builder:Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;

    add-int/lit8 v5, v0, -0x8

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->parseVttCueBox(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;I)Lorg/telegram/messenger/exoplayer2/text/Cue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttDecoder;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 67
    .end local v0    # "boxSize":I
    .end local v1    # "boxType":I
    :cond_2
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v3
.end method
