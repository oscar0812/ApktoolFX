.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$State;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private isQuickTime:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 71
    const-string/jumbo v0, "qt  "

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 103
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 104
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 105
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 106
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 193
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 194
    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 9

    .prologue
    .line 466
    const/4 v2, -0x1

    .line 467
    .local v2, "earliestSampleTrackIndex":I
    const-wide v0, 0x7fffffffffffffffL

    .line 468
    .local v0, "earliestSampleOffset":J
    const/4 v5, 0x0

    .local v5, "trackIndex":I
    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    .line 469
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v8, v5

    .line 470
    .local v4, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v3, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 471
    .local v3, "sampleIndex":I
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v8, :cond_1

    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v3

    .line 476
    .local v6, "trackSampleOffset":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 477
    move-wide v0, v6

    .line 478
    move v2, v5

    goto :goto_1

    .line 482
    .end local v3    # "sampleIndex":I
    .end local v4    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v6    # "trackSampleOffset":J
    :cond_2
    return v2
.end method

.method private processAtomEnded(J)V
    .locals 5
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 272
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    .line 273
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 274
    .local v0, "containerAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v1, v2, :cond_1

    .line 276
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 277
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 278
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 283
    .end local v0    # "containerAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v1, v4, :cond_3

    .line 284
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 286
    :cond_3
    return-void
.end method

.method private static processFtypAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "atomData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v1, 0x1

    .line 295
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 296
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 297
    .local v0, "majorBrand":I
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v0, v2, :cond_0

    .line 306
    :goto_0
    return v1

    .line 300
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 301
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 302
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 306
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processMoovAtom(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 27
    .param p1, "moov"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 313
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 314
    .local v10, "durationUs":J
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v25, "tracks":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const-wide v12, 0x7fffffffffffffffL

    .line 317
    .local v12, "earliestSampleOffset":J
    const/16 v20, 0x0

    .line 318
    .local v20, "metadata":Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    new-instance v17, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    .line 319
    .local v17, "gaplessInfoHolder":Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v26

    .line 320
    .local v26, "udta":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v26, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v20

    .line 322
    if-eqz v20, :cond_0

    .line 323
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z

    .line 327
    :cond_0
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_5

    .line 328
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 329
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq v5, v6, :cond_2

    .line 327
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 333
    :cond_2
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-result-object v23

    .line 335
    .local v23, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    if-eqz v23, :cond_1

    .line 339
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    .line 340
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v22

    .line 341
    .local v22, "stblAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v24

    .line 342
    .local v24, "trackSampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eqz v5, :cond_1

    .line 346
    new-instance v21, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    .line 347
    move/from16 v0, v18

    invoke-interface {v5, v0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 350
    .local v21, "mp4Track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v19, v5, 0x1e

    .line 351
    .local v19, "maxInputSize":I
    move-object/from16 v0, v23

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v16

    .line 352
    .local v16, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 353
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 354
    move-object/from16 v0, v17

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v16

    .line 357
    :cond_3
    if-eqz v20, :cond_4

    .line 358
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v16

    .line 361
    :cond_4
    move-object/from16 v0, v21

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 363
    move-object/from16 v0, v23

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 364
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    const/4 v6, 0x0

    aget-wide v14, v5, v6

    .line 367
    .local v14, "firstSampleOffset":J
    cmp-long v5, v14, v12

    if-gez v5, :cond_1

    .line 368
    move-wide v12, v14

    goto/16 :goto_1

    .line 371
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v14    # "firstSampleOffset":J
    .end local v16    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v19    # "maxInputSize":I
    .end local v21    # "mp4Track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v22    # "stblAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v23    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .end local v24    # "trackSampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    :cond_5
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 372
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 375
    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 11
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v3, :cond_1

    .line 199
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v5, v10, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    :goto_0
    return v5

    .line 202
    :cond_0
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 203
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 204
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 205
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 208
    :cond_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 210
    const/16 v2, 0x8

    .line 211
    .local v2, "headerBytesRemaining":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v10, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 212
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 213
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 216
    .end local v2    # "headerBytesRemaining":I
    :cond_2
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v6, v8

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    sub-long v0, v6, v8

    .line 218
    .local v0, "endPosition":J
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 219
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 220
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .end local v0    # "endPosition":J
    :goto_1
    move v5, v4

    .line 238
    goto :goto_0

    .line 223
    .restart local v0    # "endPosition":J
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_1

    .line 225
    .end local v0    # "endPosition":J
    :cond_4
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 228
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v3, v10, :cond_5

    move v3, v4

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 229
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_6

    move v3, v4

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 230
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 231
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3, v5, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    :cond_5
    move v3, v5

    .line 228
    goto :goto_2

    :cond_6
    move v3, v5

    .line 229
    goto :goto_3

    .line 234
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 235
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)Z
    .locals 10
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 248
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v5

    sub-long v2, v6, v8

    .line 249
    .local v2, "atomPayloadSize":J
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 250
    .local v0, "atomEndPosition":J
    const/4 v4, 0x0

    .line 251
    .local v4, "seekRequired":Z
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v5, :cond_2

    .line 252
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v7, v2

    invoke-interface {p1, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 253
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v5, v6, :cond_1

    .line 254
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    .line 267
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 268
    if-eqz v4, :cond_4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 255
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 260
    :cond_2
    const-wide/32 v6, 0x40000

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 261
    long-to-int v5, v2

    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 264
    const/4 v4, 0x1

    goto :goto_0

    .line 268
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 20
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v18

    .line 396
    .local v18, "trackIndex":I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    .line 397
    const/4 v4, -0x1

    .line 458
    :goto_0
    return v4

    .line 399
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v15, v4, v18

    .line 400
    .local v15, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v3, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 401
    .local v3, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    iget v14, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 402
    .local v14, "sampleIndex":I
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v4, v14

    .line 403
    .local v12, "position":J
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v7, v4, v14

    .line 404
    .local v7, "sampleSize":I
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 407
    const-wide/16 v4, 0x8

    add-long/2addr v12, v4

    .line 408
    add-int/lit8 v7, v7, -0x8

    .line 410
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v8, v6

    add-long v16, v4, v8

    .line 411
    .local v16, "skipAmount":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_2

    const-wide/32 v4, 0x40000

    cmp-long v4, v16, v4

    if-ltz v4, :cond_3

    .line 412
    :cond_2
    move-object/from16 v0, p2

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 413
    const/4 v4, 0x1

    goto :goto_0

    .line 415
    :cond_3
    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 416
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v4, :cond_5

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 420
    .local v2, "nalLengthData":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 421
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 422
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 423
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v10, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 424
    .local v10, "nalUnitLengthFieldLength":I
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v4, 0x4

    .line 428
    .local v11, "nalUnitLengthFieldLengthDiff":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v4, v7, :cond_6

    .line 429
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_4

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 437
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 438
    add-int/2addr v7, v11

    goto :goto_1

    .line 441
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 442
    .local v19, "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 443
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 447
    .end local v2    # "nalLengthData":[B
    .end local v10    # "nalUnitLengthFieldLength":I
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    .end local v19    # "writtenBytes":I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v4, v7, :cond_6

    .line 448
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v4, v7, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 449
    .restart local v19    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 450
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 453
    .end local v19    # "writtenBytes":I
    :cond_6
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v4, v14

    iget-object v6, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 455
    iget v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 456
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 457
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 458
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 516
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 504
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSampleIndices(J)V
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    .line 489
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 490
    .local v2, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v1, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 491
    .local v1, "sampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    .line 492
    .local v0, "sampleIndex":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 494
    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    .line 496
    :cond_0
    iput v0, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "sampleIndex":I
    .end local v1    # "sampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v2    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_1
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 11
    .param p1, "timeUs"    # J

    .prologue
    .line 173
    const-wide v0, 0x7fffffffffffffffL

    .line 174
    .local v0, "earliestSamplePosition":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v6, v8, v7

    .line 175
    .local v6, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v5, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 176
    .local v5, "sampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v4

    .line 177
    .local v4, "sampleIndex":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 179
    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    .line 181
    :cond_0
    iget-object v10, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v10, v4

    .line 182
    .local v2, "offset":J
    cmp-long v10, v2, v0

    if-gez v10, :cond_1

    .line 183
    move-wide v0, v2

    .line 174
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "offset":J
    .end local v4    # "sampleIndex":I
    .end local v5    # "sampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v6    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_2
    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 116
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
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
    .line 140
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 142
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, -0x1

    .line 152
    :goto_0
    return v0

    .line 147
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public seek(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 121
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 122
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 123
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p3, p4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->updateSampleIndices(J)V

    goto :goto_0
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
