.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

.field private final sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;ZZ)V
    .locals 3
    .param p1, "seiReader"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;
    .param p2, "allowNonIdrKeyframes"    # Z
    .param p3, "detectAccessUnits"    # Z

    .prologue
    const/16 v2, 0x80

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    .line 73
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    .line 74
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    .line 76
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 78
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    .line 79
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 80
    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 19
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "discardPadding"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    .line 176
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v3, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v11, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v16

    .line 182
    .local v16, "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v15

    .line 183
    .local v15, "ppsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v0, v16

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    move-object/from16 v0, v16

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v12, -0x1

    move-object/from16 v0, v16

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 186
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 202
    .end local v11    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v15    # "ppsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
    .end local v16    # "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v17

    .line 204
    .local v17, "unescapedLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    .line 208
    .end local v17    # "unescapedLength":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->endNalUnit(JI)V

    .line 209
    return-void

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v16

    .line 194
    .restart local v16    # "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    .line 196
    .end local v16    # "spsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v15

    .line 198
    .restart local v15    # "ppsData":Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1
    .param p1, "dataArray"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 168
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    .line 170
    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 6
    .param p1, "position"    # J
    .param p3, "nalUnitType"    # I
    .param p4, "pesTimeUs"    # J

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    .line 161
    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 20
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 108
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v19

    .line 109
    .local v19, "offset":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v17

    .line 110
    .local v17, "limit":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 113
    .local v4, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v14, v5

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 118
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v18

    .line 120
    .local v18, "nalUnitOffset":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 122
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 123
    return-void

    .line 127
    :cond_0
    move/from16 v0, v18

    invoke-static {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v13

    .line 131
    .local v13, "nalUnitType":I
    sub-int v16, v18, v19

    .line 132
    .local v16, "lengthToNalUnit":I
    if-lez v16, :cond_1

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    .line 135
    :cond_1
    sub-int v8, v17, v18

    .line 136
    .local v8, "bytesWrittenPastPosition":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v14, v8

    sub-long v6, v10, v14

    .line 140
    .local v6, "absolutePosition":J
    if-gez v16, :cond_2

    move/from16 v0, v16

    neg-int v9, v0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    .line 143
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    move-object/from16 v10, p0

    move-wide v11, v6

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    .line 145
    add-int/lit8 v19, v18, 0x3

    .line 146
    goto :goto_0

    .line 140
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4
    .param p1, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .prologue
    .line 94
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 95
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(II)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 97
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    .line 98
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 99
    return-void
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1
    .param p1, "pesTimeUs"    # J
    .param p3, "dataAlignmentIndicator"    # Z

    .prologue
    .line 103
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    .line 104
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 86
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    .line 90
    return-void
.end method
