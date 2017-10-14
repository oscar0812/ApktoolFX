.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkIterator"
.end annotation


# instance fields
.field private final chunkOffsets:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field private nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field private remainingSamplesPerChunkChanges:I

.field private final stsc:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
    .locals 3
    .param p1, "stsc"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "chunkOffsets"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p3, "chunkOffsetsAreLongs"    # Z

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x1

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1154
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1155
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    .line 1156
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1157
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    .line 1158
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1159
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    .line 1160
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string/jumbo v1, "first_chunk must be 1"

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 1161
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    .line 1162
    return-void

    .line 1160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public moveNext()Z
    .locals 2

    .prologue
    .line 1165
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    if-ne v0, v1, :cond_0

    .line 1166
    const/4 v0, 0x0

    .line 1176
    :goto_0
    return v0

    .line 1168
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    .line 1169
    :goto_1
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 1170
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v1, :cond_1

    .line 1171
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    .line 1172
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1173
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1174
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    .line 1176
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1169
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_1

    .line 1174
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method
