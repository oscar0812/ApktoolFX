.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->closedCaptionFormats:Ljava/util/List;

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 43
    return-void
.end method


# virtual methods
.method public consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "seiBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaUtil;->consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 63
    return-void
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 11
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    const/4 v2, 0x0

    .line 46
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 47
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 48
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v3, 0x3

    invoke-interface {p1, v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v10

    .line 49
    .local v10, "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer2/Format;

    .line 50
    .local v8, "channelFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v1, v8, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 51
    .local v1, "channelMimeType":Ljava/lang/String;
    const-string/jumbo v0, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/cea-708"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid closed caption mime type provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    iget v4, v8, Lorg/telegram/messenger/exoplayer2/Format;->selectionFlags:I

    iget-object v5, v8, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    iget v6, v8, Lorg/telegram/messenger/exoplayer2/Format;->accessibilityChannel:I

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->outputs:[Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    aput-object v10, v0, v9

    .line 46
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    .end local v1    # "channelMimeType":Ljava/lang/String;
    .end local v8    # "channelFormat":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v10    # "output":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    :cond_2
    return-void
.end method
