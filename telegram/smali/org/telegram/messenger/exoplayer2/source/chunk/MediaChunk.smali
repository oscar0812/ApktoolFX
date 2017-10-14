.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 14
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "startTimeUs"    # J
    .param p8, "endTimeUs"    # J
    .param p10, "chunkIndex"    # I

    .prologue
    .line 47
    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 49
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move/from16 v0, p10

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->chunkIndex:I

    .line 51
    return-void
.end method


# virtual methods
.method public getNextChunkIndex()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isLoadCompleted()Z
.end method
