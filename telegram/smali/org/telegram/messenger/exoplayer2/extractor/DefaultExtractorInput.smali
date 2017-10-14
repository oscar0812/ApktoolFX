.class public final Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    .locals 2
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 50
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 51
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    .line 52
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 53
    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4
    .param p1, "bytesRead"    # I

    .prologue
    .line 273
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 274
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 276
    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 180
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int v1, v2, p1

    .line 181
    .local v1, "requiredLength":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x10000

    add-int/2addr v3, v1

    const/high16 v4, 0x80000

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 184
    .local v0, "newPeekCapacity":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 186
    .end local v0    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .locals 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bytesAlreadyRead"    # I
    .param p5, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 254
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 257
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    add-int v3, p2, p4

    sub-int v4, p3, p4

    invoke-interface {v2, p1, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 258
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_2

    .line 259
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 264
    :goto_0
    return v1

    .line 262
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 264
    :cond_2
    add-int v1, p4, v0

    goto :goto_0
.end method

.method private readFromPeekBuffer([BII)I
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 209
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    if-nez v2, :cond_0

    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    .local v0, "peekBytes":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    goto :goto_0
.end method

.method private skipFromPeekBuffer(I)I
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 195
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 196
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 197
    return v0
.end method

.method private updatePeekBuffer(I)V
    .locals 5
    .param p1, "bytesConsumed"    # I

    .prologue
    const/4 v4, 0x0

    .line 224
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 225
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 226
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 227
    .local v0, "newPeekBuffer":[B
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    const/high16 v3, 0x80000

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 228
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v1, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 232
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 146
    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 6
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 130
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 131
    .local v4, "bytesPeeked":I
    :cond_0
    if-ge v4, p1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    .line 134
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 138
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 139
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 140
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 124
    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 2
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v6

    .line 58
    .local v6, "bytesRead":I
    if-nez v6, :cond_0

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    .line 61
    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 62
    return v6
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 80
    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v4

    .line 69
    .local v4, "bytesRead":I
    :goto_0
    if-ge v4, p3, :cond_0

    if-eq v4, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 73
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resetPeekPosition()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 151
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "e":Ljava/lang/Throwable;, "TE;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 171
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 172
    throw p3

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(I)I
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v6

    .line 85
    .local v6, "bytesSkipped":I
    if-nez v6, :cond_0

    .line 86
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    .line 87
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    .line 89
    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 90
    return v6
.end method

.method public skipFully(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 108
    return-void
.end method

.method public skipFully(IZ)Z
    .locals 7
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 96
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v4

    .line 97
    .local v4, "bytesSkipped":I
    :goto_0
    if-ge v4, p1, :cond_0

    if-eq v4, v6, :cond_0

    .line 98
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    neg-int v2, v4

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 99
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v5, p2

    .line 98
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 102
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
