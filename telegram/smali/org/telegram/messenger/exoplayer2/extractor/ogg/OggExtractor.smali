.class public Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .locals 1
    .param p0, "scratch"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 108
    return-object p0
.end method


# virtual methods
.method getStreamReader()Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 80
    .local v0, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 82
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 83
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public seek(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seek(JJ)V

    .line 88
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    .line 54
    .local v1, "header":Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    const/4 v6, 0x1

    invoke-virtual {v1, p1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 73
    .end local v1    # "header":Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    :cond_0
    :goto_0
    return v4

    .line 58
    .restart local v1    # "header":Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    :cond_1
    iget v6, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59
    .local v2, "length":I
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 60
    .local v3, "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    iget-object v6, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 62
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    :goto_1
    move v4, v5

    .line 71
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 65
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_1

    .line 72
    .end local v1    # "header":Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    .end local v2    # "length":I
    .end local v3    # "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/ParserException;
    goto :goto_0

    .line 66
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/ParserException;
    .restart local v1    # "header":Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    .restart local v2    # "length":I
    .restart local v3    # "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
