.class public Lcom/coremedia/iso/boxes/fragment/SampleFlags;
.super Ljava/lang/Object;
.source "SampleFlags.java"


# instance fields
.field private is_leading:B

.field private reserved:B

.field private sampleDegradationPriority:I

.field private sampleDependsOn:B

.field private sampleHasRedundancy:B

.field private sampleIsDependedOn:B

.field private sampleIsDifferenceSample:Z

.field private samplePaddingValue:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 50
    .local v0, "a":J
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, v0

    const/16 v4, 0x1c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    .line 51
    const-wide/32 v2, 0xc000000

    and-long/2addr v2, v0

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    .line 52
    const-wide/32 v2, 0x3000000

    and-long/2addr v2, v0

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    .line 53
    const-wide/32 v2, 0xc00000

    and-long/2addr v2, v0

    const/16 v4, 0x16

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    .line 54
    const-wide/32 v2, 0x300000

    and-long/2addr v2, v0

    const/16 v4, 0x14

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    .line 55
    const-wide/32 v2, 0xe0000

    and-long/2addr v2, v0

    const/16 v4, 0x11

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    .line 56
    const-wide/32 v2, 0x10000

    and-long/2addr v2, v0

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    .line 57
    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    .line 59
    return-void

    .line 56
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    if-ne p0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 217
    check-cast v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 219
    .local v0, "that":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 220
    :cond_4
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 221
    :cond_5
    iget v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    iget v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 222
    :cond_6
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 223
    :cond_7
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 224
    :cond_8
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 225
    :cond_9
    iget-boolean v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    iget-boolean v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 226
    :cond_a
    iget-byte v3, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    iget-byte v4, v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "os"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "a":J
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    shl-int/lit8 v2, v2, 0x1c

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 65
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    shl-int/lit8 v2, v2, 0x1a

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 66
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 67
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 68
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    shl-int/lit8 v2, v2, 0x14

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 69
    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 70
    iget-boolean v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 71
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 72
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 73
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getReserved()I
    .locals 1

    .prologue
    .line 76
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    return v0
.end method

.method public getSampleDegradationPriority()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    return v0
.end method

.method public getSampleDependsOn()I
    .locals 1

    .prologue
    .line 95
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    return v0
.end method

.method public getSampleHasRedundancy()I
    .locals 1

    .prologue
    .line 155
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    return v0
.end method

.method public getSampleIsDependedOn()I
    .locals 1

    .prologue
    .line 125
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    return v0
.end method

.method public getSamplePaddingValue()I
    .locals 1

    .prologue
    .line 174
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 233
    iget-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    .line 234
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    add-int v0, v1, v2

    .line 235
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    add-int v0, v1, v2

    .line 236
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    add-int v0, v1, v2

    .line 237
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    add-int v0, v1, v2

    .line 238
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    add-int v0, v1, v2

    .line 239
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 240
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    add-int v0, v1, v2

    .line 241
    return v0

    .line 239
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSampleIsDifferenceSample()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    return v0
.end method

.method public setReserved(I)V
    .locals 1
    .param p1, "reserved"    # I

    .prologue
    .line 80
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    .line 81
    return-void
.end method

.method public setSampleDegradationPriority(I)V
    .locals 0
    .param p1, "sampleDegradationPriority"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    .line 196
    return-void
.end method

.method public setSampleDependsOn(I)V
    .locals 1
    .param p1, "sampleDependsOn"    # I

    .prologue
    .line 110
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    .line 111
    return-void
.end method

.method public setSampleHasRedundancy(I)V
    .locals 1
    .param p1, "sampleHasRedundancy"    # I

    .prologue
    .line 170
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    .line 171
    return-void
.end method

.method public setSampleIsDependedOn(I)V
    .locals 1
    .param p1, "sampleIsDependedOn"    # I

    .prologue
    .line 140
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    .line 141
    return-void
.end method

.method public setSampleIsDifferenceSample(Z)V
    .locals 0
    .param p1, "sampleIsDifferenceSample"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    .line 188
    return-void
.end method

.method public setSamplePaddingValue(I)V
    .locals 1
    .param p1, "samplePaddingValue"    # I

    .prologue
    .line 178
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SampleFlags{reserved="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->reserved:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string/jumbo v1, ", isLeading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->is_leading:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string/jumbo v1, ", depOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDependsOn:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string/jumbo v1, ", isDepOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDependedOn:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, ", hasRedundancy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleHasRedundancy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, ", padValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->samplePaddingValue:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, ", isDiffSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleIsDifferenceSample:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, ", degradPrio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->sampleDegradationPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
