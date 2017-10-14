.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 45
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    .line 46
    return-void
.end method


# virtual methods
.method public decode(Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 14
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    if-eqz v8, :cond_0

    iget-wide v8, p1, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .line 52
    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 53
    :cond_0
    new-instance v8, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    iget-wide v10, p1, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v8, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;-><init>(J)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .line 54
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    iget-wide v10, p1, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    iget-wide v12, p1, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 57
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 58
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 59
    .local v2, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 60
    .local v3, "size":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 61
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v8, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->reset([BI)V

    .line 64
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 65
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    int-to-long v4, v8

    .line 66
    .local v4, "ptsAdjustment":J
    const/16 v8, 0x20

    shl-long v8, v4, v8

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    int-to-long v10, v10

    or-long v4, v8, v10

    .line 68
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 69
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 70
    .local v6, "spliceCommandLength":I
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 71
    .local v7, "spliceCommandType":I
    const/4 v1, 0x0

    .line 73
    .local v1, "command":Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 74
    sparse-switch v7, :sswitch_data_0

    .line 95
    :goto_0
    if-nez v1, :cond_2

    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    const/4 v9, 0x0

    new-array v9, v9, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    :goto_1
    return-object v8

    .line 76
    :sswitch_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceNullCommand;

    .end local v1    # "command":Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 77
    .restart local v1    # "command":Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v1

    .line 80
    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    invoke-static {v8, v4, v5, v9}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v1

    .line 84
    goto :goto_0

    .line 86
    :sswitch_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    invoke-static {v8, v4, v5, v9}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v1

    .line 87
    goto :goto_0

    .line 89
    :sswitch_4
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v8, v6, v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IJ)Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v1

    .line 90
    goto :goto_0

    .line 95
    :cond_2
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method
