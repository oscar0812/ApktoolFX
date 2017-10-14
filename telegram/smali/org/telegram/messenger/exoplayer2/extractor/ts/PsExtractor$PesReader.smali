.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private seenFirstDts:Z

.field private timeUs:J

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;)V
    .locals 2
    .param p1, "pesPayloadReader"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;
    .param p2, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 258
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .line 259
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 260
    return-void
.end method

.method private parseHeader()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 297
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 298
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    .line 299
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 303
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    .line 304
    return-void
.end method

.method private parseHeaderExtension()V
    .locals 11

    .prologue
    const/16 v10, 0x1e

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    .line 307
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 308
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v4, :cond_1

    .line 309
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 310
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v4, v10

    .line 311
    .local v2, "pts":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 312
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 313
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 314
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 315
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 316
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v4, :cond_0

    .line 317
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 318
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    shl-long v0, v4, v10

    .line 319
    .local v0, "dts":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 320
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 321
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 322
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 323
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 329
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 330
    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 332
    .end local v0    # "dts":J
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 334
    .end local v2    # "pts":J
    :cond_1
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 4
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 282
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    .line 283
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    .line 285
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v1, 0x1

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    .line 289
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 290
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 271
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    .line 272
    return-void
.end method
