.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 79
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "application/cea-608"

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v2, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 83
    :cond_0
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 84
    return-void
.end method

.method private buildSeiReader(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;
    .locals 18
    .param p1, "esInfo"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .prologue
    .line 137
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    invoke-direct {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    .line 173
    :goto_0
    return-object v1

    .line 140
    :cond_0
    new-instance v17, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 141
    .local v17, "scratchDescriptorData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 142
    .local v10, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 143
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 144
    .local v12, "descriptorTag":I
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 145
    .local v11, "descriptorLength":I
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v15, v1, v11

    .line 146
    .local v15, "nextDescriptorPosition":I
    const/16 v1, 0x86

    if-ne v12, v1, :cond_3

    .line 148
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .restart local v10    # "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/Format;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v16, v1, 0x1f

    .line 150
    .local v16, "numberOfServices":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 151
    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "language":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 153
    .local v9, "captionTypeByte":I
    and-int/lit16 v1, v9, 0x80

    if-eqz v1, :cond_1

    const/4 v14, 0x1

    .line 156
    .local v14, "isDigital":Z
    :goto_3
    if-eqz v14, :cond_2

    .line 157
    const-string/jumbo v2, "application/cea-708"

    .line 158
    .local v2, "mimeType":Ljava/lang/String;
    and-int/lit8 v7, v9, 0x3f

    .line 163
    .local v7, "accessibilityChannel":I
    :goto_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 150
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 153
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v7    # "accessibilityChannel":I
    .end local v14    # "isDigital":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_3

    .line 160
    .restart local v14    # "isDigital":Z
    :cond_2
    const-string/jumbo v2, "application/cea-608"

    .line 161
    .restart local v2    # "mimeType":Ljava/lang/String;
    const/4 v7, 0x1

    .restart local v7    # "accessibilityChannel":I
    goto :goto_4

    .line 171
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "accessibilityChannel":I
    .end local v9    # "captionTypeByte":I
    .end local v13    # "i":I
    .end local v14    # "isDigital":Z
    .end local v16    # "numberOfServices":I
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    .line 173
    .end local v11    # "descriptorLength":I
    .end local v12    # "descriptorTag":I
    .end local v15    # "nextDescriptorPosition":I
    :cond_4
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    invoke-direct {v1, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 177
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "esInfo"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .prologue
    const/4 v0, 0x0

    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :sswitch_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 98
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    const/4 v2, 0x0

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 102
    :sswitch_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 105
    :sswitch_3
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 107
    :sswitch_4
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 109
    :sswitch_5
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;

    .line 110
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    move-result-object v2

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 113
    :sswitch_6
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_0

    .line 115
    :sswitch_7
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V

    goto/16 :goto_0

    .line 118
    :sswitch_8
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto/16 :goto_0

    .line 120
    :sswitch_9
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto/16 :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xf -> :sswitch_1
        0x15 -> :sswitch_8
        0x1b -> :sswitch_5
        0x24 -> :sswitch_6
        0x59 -> :sswitch_9
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
        0x86 -> :sswitch_7
        0x87 -> :sswitch_2
        0x8a -> :sswitch_3
    .end sparse-switch
.end method
