.class public final Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessageDecoder;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 20
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;

    .prologue
    .line 35
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 36
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    .line 37
    .local v11, "data":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    .line 38
    .local v13, "size":I
    new-instance v12, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v12, v11, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 39
    .local v12, "emsgData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "schemeIdUri":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v14

    .line 42
    .local v14, "timescale":J
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    div-long v6, v16, v14

    .line 44
    .local v6, "durationMs":J
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 45
    .local v8, "id":J
    invoke-virtual {v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    invoke-static {v11, v3, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 46
    .local v10, "messageData":[B
    new-instance v16, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    const/4 v3, 0x1

    new-array v0, v3, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v3, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    aput-object v3, v17, v18

    invoke-direct/range {v16 .. v17}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    return-object v16
.end method
