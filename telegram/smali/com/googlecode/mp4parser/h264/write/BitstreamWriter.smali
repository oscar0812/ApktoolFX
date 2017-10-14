.class public Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;
.super Ljava/lang/Object;
.source "BitstreamWriter.java"


# instance fields
.field private curBit:I

.field private curByte:[I

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    .line 40
    iput-object p1, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->os:Ljava/io/OutputStream;

    .line 41
    return-void
.end method

.method private writeCurByte()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    .line 58
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x4

    .line 57
    or-int/2addr v1, v2

    .line 58
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x3

    .line 57
    or-int/2addr v1, v2

    .line 58
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    .line 57
    or-int/2addr v1, v2

    .line 59
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x1

    .line 57
    or-int/2addr v1, v2

    .line 59
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    .line 57
    or-int v0, v1, v2

    .line 60
    .local v0, "toWrite":I
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    iget v0, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 52
    iput v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    .line 53
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->writeCurByte()V

    .line 54
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    aput v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write1Bit(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lcom/googlecode/mp4parser/h264/Debug;->print(I)V

    .line 70
    iget v0, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    .line 72
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->writeCurByte()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curByte:[I

    iget v1, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    aput p1, v0, v1

    .line 75
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 107
    return-void
.end method

.method public writeNBit(JI)V
    .locals 5
    .param p1, "value"    # J
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 87
    return-void

    .line 85
    :cond_0
    sub-int v1, p3, v0

    add-int/lit8 v1, v1, -0x1

    shr-long v2, p1, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->write1Bit(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeRemainingZero()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->curBit:I

    rsub-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;->writeNBit(JI)V

    .line 97
    return-void
.end method
