.class public Lcom/mp4parser/iso14496/part15/SyncSampleEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "SyncSampleEntry.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sync"


# instance fields
.field nalUnitType:I

.field reserved:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 37
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

    .line 39
    check-cast v0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;

    .line 41
    .local v0, "that":Lcom/mp4parser/iso14496/part15/SyncSampleEntry;
    iget v3, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 42
    :cond_4
    iget v3, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 27
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    iget v2, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public getNalUnitType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "sync"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 49
    iget v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    .line 50
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    add-int v0, v1, v2

    .line 51
    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 21
    .local v0, "a":I
    and-int/lit16 v1, v0, 0xc0

    shr-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    .line 22
    and-int/lit8 v1, v0, 0x3f

    iput v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    .line 23
    return-void
.end method

.method public setNalUnitType(I)V
    .locals 0
    .param p1, "nalUnitType"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    .line 68
    return-void
.end method

.method public setReserved(I)V
    .locals 0
    .param p1, "reserved"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncSampleEntry{reserved="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ", nalUnitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
