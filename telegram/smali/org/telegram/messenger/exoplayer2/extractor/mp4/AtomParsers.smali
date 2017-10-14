.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_cenc:I

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 47
    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 48
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 49
    const-string/jumbo v0, "sbtl"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 50
    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 51
    const-string/jumbo v0, "clcp"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 52
    const-string/jumbo v0, "cenc"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_cenc:I

    .line 53
    const-string/jumbo v0, "meta"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    return-void
.end method

.method private static findEsdsPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)I
    .locals 5
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 935
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 936
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    .line 937
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 938
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 939
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 940
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 941
    .local v2, "childType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 946
    .end local v0    # "childAtomPosition":I
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :goto_2
    return v0

    .line 939
    .restart local v0    # "childAtomPosition":I
    .restart local v1    # "childAtomSize":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 944
    .restart local v2    # "childType":I
    :cond_1
    add-int/2addr v0, v1

    .line 945
    goto :goto_0

    .line 946
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 26
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p8, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I

    .prologue
    .line 811
    add-int/lit8 v6, p2, 0x8

    add-int/lit8 v6, v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 813
    const/16 v25, 0x0

    .line 814
    .local v25, "quickTimeSoundDescriptionVersion":I
    if-eqz p6, :cond_6

    .line 815
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v25

    .line 816
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 824
    :goto_0
    if-eqz v25, :cond_0

    const/4 v6, 0x1

    move/from16 v0, v25

    if-ne v0, v6, :cond_7

    .line 825
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 826
    .local v11, "channelCount":I
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 827
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v12

    .line 829
    .local v12, "sampleRate":I
    const/4 v6, 0x1

    move/from16 v0, v25

    if-ne v0, v6, :cond_1

    .line 830
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 846
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v21

    .line 847
    .local v21, "childPosition":I
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 848
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    .line 849
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 853
    :cond_2
    const/4 v7, 0x0

    .line 854
    .local v7, "mimeType":Ljava/lang/String;
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_8

    .line 855
    const-string/jumbo v7, "audio/ac3"

    .line 876
    :cond_3
    :goto_2
    const/16 v23, 0x0

    .line 877
    .local v23, "initializationData":[B
    :goto_3
    sub-int v6, v21, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_19

    .line 878
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v19

    .line 880
    .local v19, "childAtomSize":I
    if-lez v19, :cond_13

    const/4 v6, 0x1

    :goto_4
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 881
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 882
    .local v20, "childAtomType":I
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v20

    if-eq v0, v6, :cond_4

    if-eqz p6, :cond_15

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_15

    .line 883
    :cond_4
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_14

    move/from16 v22, v21

    .line 885
    .local v22, "esdsAtomPosition":I
    :goto_5
    const/4 v6, -0x1

    move/from16 v0, v22

    if-eq v0, v6, :cond_5

    .line 887
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v24

    .line 888
    .local v24, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v24

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v7    # "mimeType":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 889
    .restart local v7    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "initializationData":[B
    check-cast v23, [B

    .line 890
    .restart local v23    # "initializationData":[B
    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 894
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v18

    .line 895
    .local v18, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 896
    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 916
    .end local v18    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v22    # "esdsAtomPosition":I
    .end local v24    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_5
    :goto_6
    add-int v21, v21, v19

    .line 917
    goto :goto_3

    .line 818
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v11    # "channelCount":I
    .end local v12    # "sampleRate":I
    .end local v19    # "childAtomSize":I
    .end local v20    # "childAtomType":I
    .end local v21    # "childPosition":I
    .end local v23    # "initializationData":[B
    :cond_6
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    .line 832
    :cond_7
    const/4 v6, 0x2

    move/from16 v0, v25

    if-ne v0, v6, :cond_1a

    .line 833
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 835
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v12, v8

    .line 836
    .restart local v12    # "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 840
    .restart local v11    # "channelCount":I
    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    .line 856
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v21    # "childPosition":I
    :cond_8
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_9

    .line 857
    const-string/jumbo v7, "audio/eac3"

    goto/16 :goto_2

    .line 858
    :cond_9
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_a

    .line 859
    const-string/jumbo v7, "audio/vnd.dts"

    goto/16 :goto_2

    .line 860
    :cond_a
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v6, :cond_b

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_c

    .line 861
    :cond_b
    const-string/jumbo v7, "audio/vnd.dts.hd"

    goto/16 :goto_2

    .line 862
    :cond_c
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_d

    .line 863
    const-string/jumbo v7, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    .line 864
    :cond_d
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_e

    .line 865
    const-string/jumbo v7, "audio/3gpp"

    goto/16 :goto_2

    .line 866
    :cond_e
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_f

    .line 867
    const-string/jumbo v7, "audio/amr-wb"

    goto/16 :goto_2

    .line 868
    :cond_f
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v6, :cond_10

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_11

    .line 869
    :cond_10
    const-string/jumbo v7, "audio/raw"

    goto/16 :goto_2

    .line 870
    :cond_11
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_12

    .line 871
    const-string/jumbo v7, "audio/mpeg"

    goto/16 :goto_2

    .line 872
    :cond_12
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_3

    .line 873
    const-string/jumbo v7, "audio/alac"

    goto/16 :goto_2

    .line 880
    .restart local v19    # "childAtomSize":I
    .restart local v23    # "initializationData":[B
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 884
    .restart local v20    # "childAtomType":I
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)I

    move-result v22

    goto/16 :goto_5

    .line 899
    :cond_15
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_16

    .line 900
    add-int/lit8 v6, v21, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 901
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v6, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_6

    .line 903
    :cond_16
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_17

    .line 904
    add-int/lit8 v6, v21, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 905
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v6, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_6

    .line 907
    :cond_17
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_18

    .line 908
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, p7

    move-object/from16 v16, p5

    invoke-static/range {v6 .. v16}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_6

    .line 911
    :cond_18
    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v0, v20

    if-ne v0, v6, :cond_5

    .line 912
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 913
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 914
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    goto/16 :goto_6

    .line 919
    .end local v19    # "childAtomSize":I
    .end local v20    # "childAtomType":I
    :cond_19
    move-object/from16 v0, p8

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v6, :cond_1a

    if-eqz v7, :cond_1a

    .line 921
    const-string/jumbo v6, "audio/raw"

    .line 922
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v13, 0x2

    .line 923
    .local v13, "pcmEncoding":I
    :goto_7
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    if-nez v23, :cond_1c

    const/4 v14, 0x0

    .line 925
    :goto_8
    const/16 v16, 0x0

    move-object/from16 v15, p7

    move-object/from16 v17, p5

    .line 923
    invoke-static/range {v6 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 928
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v11    # "channelCount":I
    .end local v12    # "sampleRate":I
    .end local v13    # "pcmEncoding":I
    .end local v21    # "childPosition":I
    .end local v23    # "initializationData":[B
    :cond_1a
    return-void

    .line 922
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v11    # "channelCount":I
    .restart local v12    # "sampleRate":I
    .restart local v21    # "childPosition":I
    .restart local v23    # "initializationData":[B
    :cond_1b
    const/4 v13, -0x1

    goto :goto_7

    .line 925
    .restart local v13    # "pcmEncoding":I
    :cond_1c
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_8
.end method

.method private static parseEdts(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 13
    .param p0, "edtsAtom"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 777
    if-eqz p0, :cond_0

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .local v2, "elst":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_1

    .line 778
    .end local v2    # "elst":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_0
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 798
    :goto_0
    return-object v9

    .line 780
    .restart local v2    # "elst":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 781
    .local v3, "elstData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 782
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 783
    .local v5, "fullAtom":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 784
    .local v8, "version":I
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 785
    .local v4, "entryCount":I
    new-array v0, v4, [J

    .line 786
    .local v0, "editListDurations":[J
    new-array v1, v4, [J

    .line 787
    .local v1, "editListMediaTimes":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_5

    .line 788
    if-ne v8, v12, :cond_2

    .line 789
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_2
    aput-wide v10, v0, v6

    .line 790
    if-ne v8, v12, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    :goto_3
    aput-wide v10, v1, v6

    .line 791
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 792
    .local v7, "mediaRateInteger":I
    if-eq v7, v12, :cond_4

    .line 794
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Unsupported media rate."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 789
    .end local v7    # "mediaRateInteger":I
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_2

    .line 790
    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v10, v9

    goto :goto_3

    .line 796
    .restart local v7    # "mediaRateInteger":I
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 787
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 798
    .end local v7    # "mediaRateInteger":I
    :cond_5
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 953
    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 955
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 956
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    .line 957
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 959
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 960
    .local v0, "flags":I
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_0

    .line 961
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 963
    :cond_0
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_1

    .line 964
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 966
    :cond_1
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_2

    .line 967
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 971
    :cond_2
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 972
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    .line 975
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 977
    .local v4, "objectTypeIndication":I
    sparse-switch v4, :sswitch_data_0

    .line 1011
    const/4 v3, 0x0

    .line 1015
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1018
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1019
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 1020
    .local v2, "initializationDataSize":I
    new-array v1, v2, [B

    .line 1021
    .local v1, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1022
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .end local v1    # "initializationData":[B
    .end local v2    # "initializationDataSize":I
    :goto_1
    return-object v5

    .line 979
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v3, "audio/mpeg"

    .line 980
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 982
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v3, "video/mp4v-es"

    .line 983
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 985
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "video/avc"

    .line 986
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 988
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "video/hevc"

    .line 989
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 994
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "audio/mp4a-latm"

    .line 995
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 997
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v3, "audio/ac3"

    .line 998
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1000
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v3, "audio/eac3"

    .line 1001
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1004
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v3, "audio/vnd.dts"

    .line 1005
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 1008
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v3, "audio/vnd.dts.hd"

    .line 1009
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 977
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 1123
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1124
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1125
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 1126
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1127
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 1129
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 2
    .param p0, "hdlr"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 540
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 541
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 542
    .local v0, "trackType":I
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne v0, v1, :cond_0

    .line 543
    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    .line 544
    :cond_0
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne v0, v1, :cond_1

    .line 545
    const/4 v1, 0x2

    goto :goto_0

    .line 546
    :cond_1
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne v0, v1, :cond_3

    .line 548
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 549
    :cond_3
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne v0, v1, :cond_4

    .line 550
    const/4 v1, 0x4

    goto :goto_0

    .line 552
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static parseIlst(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 3
    .param p0, "ilst"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .prologue
    .line 449
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 452
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 453
    .local v1, "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    .end local v1    # "entry":Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    new-instance v2, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method private static parseMdhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 8
    .param p0, "mdhd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 564
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 565
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 566
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 567
    .local v3, "version":I
    if-nez v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 568
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 569
    .local v4, "timescale":J
    if-nez v3, :cond_0

    const/4 v7, 0x4

    :cond_0
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 570
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 571
    .local v2, "languageCode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v2, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "language":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 567
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "languageCode":I
    .end local v4    # "timescale":J
    :cond_1
    const/16 v6, 0x10

    goto :goto_0
.end method

.method private static parseMetaAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 4
    .param p0, "meta"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .prologue
    .line 434
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 435
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 436
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 437
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 438
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 439
    .local v2, "atomType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    .line 440
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 441
    add-int v3, v0, v1

    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 445
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    :goto_1
    return-object v3

    .line 443
    .restart local v0    # "atomPosition":I
    .restart local v1    # "atomSize":I
    .restart local v2    # "atomType":I
    :cond_0
    add-int/lit8 v3, v1, -0x8

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 445
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mvhd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 467
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 468
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 469
    .local v0, "fullAtom":I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 470
    .local v1, "version":I
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 471
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 470
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 802
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 803
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 804
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 805
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 1106
    add-int/lit8 v2, p1, 0x8

    .line 1107
    .local v2, "childPosition":I
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_1

    .line 1108
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1109
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1110
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1111
    .local v1, "childAtomType":I
    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v1, v3, :cond_0

    .line 1112
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v4, v2, v0

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1116
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :goto_1
    return-object v3

    .line 1114
    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    :cond_0
    add-int/2addr v2, v0

    .line 1115
    goto :goto_0

    .line 1116
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 7
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p4, "entryIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 1031
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 1032
    .local v2, "childPosition":I
    :goto_0
    sub-int v4, v2, p1

    if-ge v4, p2, :cond_0

    .line 1033
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1034
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1035
    .local v0, "childAtomSize":I
    if-lez v0, :cond_1

    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1036
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1037
    .local v1, "childAtomType":I
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v1, v4, :cond_2

    .line 1038
    invoke-static {p0, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSinfFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1040
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_2

    .line 1041
    iget-object v5, p3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v4, v5, p4

    .line 1042
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1048
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_0
    return v5

    .restart local v0    # "childAtomSize":I
    :cond_1
    move v4, v5

    .line 1035
    goto :goto_1

    .line 1045
    .restart local v1    # "childAtomType":I
    :cond_2
    add-int/2addr v2, v0

    .line 1046
    goto :goto_0
.end method

.method private static parseSchiFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 8
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1084
    add-int/lit8 v2, p1, 0x8

    .line 1085
    .local v2, "childPosition":I
    :goto_0
    sub-int v7, v2, p1

    if-ge v7, p2, :cond_2

    .line 1086
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1087
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1088
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1089
    .local v1, "childAtomType":I
    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v1, v7, :cond_1

    .line 1090
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1091
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v4, :cond_0

    .line 1092
    .local v4, "defaultIsEncrypted":Z
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 1093
    .local v3, "defaultInitVectorSize":I
    const/16 v7, 0x10

    new-array v5, v7, [B

    .line 1094
    .local v5, "defaultKeyId":[B
    array-length v7, v5

    invoke-virtual {p0, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1095
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v4, v3, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    .line 1099
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "defaultInitVectorSize":I
    .end local v4    # "defaultIsEncrypted":Z
    .end local v5    # "defaultKeyId":[B
    :goto_2
    return-object v6

    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    :cond_0
    move v4, v6

    .line 1091
    goto :goto_1

    .line 1097
    :cond_1
    add-int/2addr v2, v0

    .line 1098
    goto :goto_0

    .line 1099
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 10
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1053
    add-int/lit8 v2, p1, 0x8

    .line 1055
    .local v2, "childPosition":I
    const/4 v4, 0x0

    .line 1056
    .local v4, "isCencScheme":Z
    const/4 v5, 0x0

    .line 1057
    .local v5, "trackEncryptionBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    const/4 v3, 0x0

    .line 1058
    .local v3, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v8, v2, p1

    if-ge v8, p2, :cond_4

    .line 1059
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1060
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1061
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1062
    .local v1, "childAtomType":I
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v8, :cond_1

    .line 1063
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1070
    :cond_0
    :goto_1
    add-int/2addr v2, v0

    .line 1071
    goto :goto_0

    .line 1064
    :cond_1
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v8, :cond_3

    .line 1065
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1066
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_cenc:I

    if-ne v8, v9, :cond_2

    move v4, v6

    :goto_2
    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_2

    .line 1067
    :cond_3
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v8, :cond_0

    .line 1068
    invoke-static {p0, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v5

    goto :goto_1

    .line 1073
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_4
    if-eqz v4, :cond_7

    .line 1074
    if-eqz v3, :cond_5

    move v8, v6

    :goto_3
    const-string/jumbo v9, "frma atom is mandatory"

    invoke-static {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1075
    if-eqz v5, :cond_6

    :goto_4
    const-string/jumbo v7, "schi->tenc atom is mandatory"

    invoke-static {v6, v7}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1076
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 1078
    :goto_5
    return-object v6

    :cond_5
    move v8, v7

    .line 1074
    goto :goto_3

    :cond_6
    move v6, v7

    .line 1075
    goto :goto_4

    .line 1078
    :cond_7
    const/4 v6, 0x0

    goto :goto_5
.end method

.method public static parseStbl(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 88
    .param p0, "track"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 110
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v79

    .line 111
    .local v79, "stszAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v79, :cond_0

    .line 112
    new-instance v74, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    move-object/from16 v0, v74

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 121
    .local v74, "sampleSizeBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_0
    invoke-interface/range {v74 .. v74}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v72

    .line 122
    .local v72, "sampleCount":I
    if-nez v72, :cond_2

    .line 123
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    const/4 v12, 0x0

    new-array v5, v12, [J

    const/4 v12, 0x0

    new-array v6, v12, [I

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-array v8, v12, [J

    const/4 v12, 0x0

    new-array v9, v12, [I

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    .line 401
    :goto_1
    return-object v4

    .line 114
    .end local v72    # "sampleCount":I
    .end local v74    # "sampleSizeBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_0
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v81

    .line 115
    .local v81, "stz2Atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v81, :cond_1

    .line 116
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v12, "Track has no sample table size information"

    invoke-direct {v4, v12}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_1
    new-instance v74, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    move-object/from16 v0, v74

    move-object/from16 v1, v81

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .restart local v74    # "sampleSizeBox":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_0

    .line 127
    .end local v81    # "stz2Atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v72    # "sampleCount":I
    :cond_2
    const/16 v20, 0x0

    .line 128
    .local v20, "chunkOffsetsAreLongs":Z
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 129
    .local v21, "chunkOffsetsAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v21, :cond_3

    .line 130
    const/16 v20, 0x1

    .line 131
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 133
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    .line 135
    .local v19, "chunkOffsets":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v76, v0

    .line 137
    .local v76, "stsc":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v80, v0

    .line 139
    .local v80, "stts":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v78

    .line 140
    .local v78, "stssAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v78, :cond_6

    move-object/from16 v0, v78

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v77, v0

    .line 142
    .local v77, "stss":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    :goto_2
    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v27

    .line 143
    .local v27, "cttsAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v27, :cond_7

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v26, v0

    .line 146
    .local v26, "ctts":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    :goto_3
    new-instance v18, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v76

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V

    .line 149
    .local v18, "chunkIterator":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    const/16 v4, 0xc

    move-object/from16 v0, v80

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 150
    invoke-virtual/range {v80 .. v80}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v70, v4, -0x1

    .line 151
    .local v70, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v80 .. v80}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v66

    .line 152
    .local v66, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v80 .. v80}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v84

    .line 155
    .local v84, "timestampDeltaInTimeUnits":I
    const/16 v67, 0x0

    .line 156
    .local v67, "remainingSamplesAtTimestampOffset":I
    const/16 v71, 0x0

    .line 157
    .local v71, "remainingTimestampOffsetChanges":I
    const/16 v85, 0x0

    .line 158
    .local v85, "timestampOffset":I
    if-eqz v26, :cond_4

    .line 159
    const/16 v4, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 160
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v71

    .line 163
    :cond_4
    const/16 v55, -0x1

    .line 164
    .local v55, "nextSynchronizationSampleIndex":I
    const/16 v69, 0x0

    .line 165
    .local v69, "remainingSynchronizationSamples":I
    if-eqz v77, :cond_5

    .line 166
    const/16 v4, 0xc

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 167
    invoke-virtual/range {v77 .. v77}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v69

    .line 168
    if-lez v69, :cond_8

    .line 169
    invoke-virtual/range {v77 .. v77}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v55, v4, -0x1

    .line 177
    :cond_5
    :goto_4
    invoke-interface/range {v74 .. v74}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v12, v12, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 178
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v70, :cond_9

    if-nez v71, :cond_9

    if-nez v69, :cond_9

    const/16 v48, 0x1

    .line 184
    .local v48, "isRechunkable":Z
    :goto_5
    const/4 v7, 0x0

    .line 187
    .local v7, "maximumSize":I
    const-wide/16 v86, 0x0

    .line 189
    .local v86, "timestampTimeUnits":J
    if-nez v48, :cond_18

    .line 190
    move/from16 v0, v72

    new-array v5, v0, [J

    .line 191
    .local v5, "offsets":[J
    move/from16 v0, v72

    new-array v6, v0, [I

    .line 192
    .local v6, "sizes":[I
    move/from16 v0, v72

    new-array v8, v0, [J

    .line 193
    .local v8, "timestamps":[J
    move/from16 v0, v72

    new-array v9, v0, [I

    .line 194
    .local v9, "flags":[I
    const-wide/16 v56, 0x0

    .line 195
    .local v56, "offset":J
    const/16 v68, 0x0

    .line 197
    .local v68, "remainingSamplesInChunk":I
    const/16 v47, 0x0

    .local v47, "i":I
    :goto_6
    move/from16 v0, v47

    move/from16 v1, v72

    if-ge v0, v1, :cond_11

    .line 199
    :goto_7
    if-nez v68, :cond_a

    .line 200
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 201
    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v56, v0

    .line 202
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v68, v0

    goto :goto_7

    .line 140
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v7    # "maximumSize":I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v18    # "chunkIterator":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v26    # "ctts":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .end local v27    # "cttsAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v47    # "i":I
    .end local v48    # "isRechunkable":Z
    .end local v55    # "nextSynchronizationSampleIndex":I
    .end local v56    # "offset":J
    .end local v66    # "remainingSamplesAtTimestampDelta":I
    .end local v67    # "remainingSamplesAtTimestampOffset":I
    .end local v68    # "remainingSamplesInChunk":I
    .end local v69    # "remainingSynchronizationSamples":I
    .end local v70    # "remainingTimestampDeltaChanges":I
    .end local v71    # "remainingTimestampOffsetChanges":I
    .end local v77    # "stss":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .end local v84    # "timestampDeltaInTimeUnits":I
    .end local v85    # "timestampOffset":I
    .end local v86    # "timestampTimeUnits":J
    :cond_6
    const/16 v77, 0x0

    goto/16 :goto_2

    .line 143
    .restart local v27    # "cttsAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v77    # "stss":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 172
    .restart local v18    # "chunkIterator":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v26    # "ctts":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .restart local v55    # "nextSynchronizationSampleIndex":I
    .restart local v66    # "remainingSamplesAtTimestampDelta":I
    .restart local v67    # "remainingSamplesAtTimestampOffset":I
    .restart local v69    # "remainingSynchronizationSamples":I
    .restart local v70    # "remainingTimestampDeltaChanges":I
    .restart local v71    # "remainingTimestampOffsetChanges":I
    .restart local v84    # "timestampDeltaInTimeUnits":I
    .restart local v85    # "timestampOffset":I
    :cond_8
    const/16 v77, 0x0

    goto :goto_4

    .line 178
    :cond_9
    const/16 v48, 0x0

    goto :goto_5

    .line 206
    .restart local v5    # "offsets":[J
    .restart local v6    # "sizes":[I
    .restart local v7    # "maximumSize":I
    .restart local v8    # "timestamps":[J
    .restart local v9    # "flags":[I
    .restart local v47    # "i":I
    .restart local v48    # "isRechunkable":Z
    .restart local v56    # "offset":J
    .restart local v68    # "remainingSamplesInChunk":I
    .restart local v86    # "timestampTimeUnits":J
    :cond_a
    if-eqz v26, :cond_c

    .line 207
    :goto_8
    if-nez v67, :cond_b

    if-lez v71, :cond_b

    .line 208
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v67

    .line 214
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v85

    .line 215
    add-int/lit8 v71, v71, -0x1

    goto :goto_8

    .line 217
    :cond_b
    add-int/lit8 v67, v67, -0x1

    .line 220
    :cond_c
    aput-wide v56, v5, v47

    .line 221
    invoke-interface/range {v74 .. v74}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v4

    aput v4, v6, v47

    .line 222
    aget v4, v6, v47

    if-le v4, v7, :cond_d

    .line 223
    aget v7, v6, v47

    .line 225
    :cond_d
    move/from16 v0, v85

    int-to-long v12, v0

    add-long v12, v12, v86

    aput-wide v12, v8, v47

    .line 228
    if-nez v77, :cond_10

    const/4 v4, 0x1

    :goto_9
    aput v4, v9, v47

    .line 229
    move/from16 v0, v47

    move/from16 v1, v55

    if-ne v0, v1, :cond_e

    .line 230
    const/4 v4, 0x1

    aput v4, v9, v47

    .line 231
    add-int/lit8 v69, v69, -0x1

    .line 232
    if-lez v69, :cond_e

    .line 233
    invoke-virtual/range {v77 .. v77}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v55, v4, -0x1

    .line 238
    :cond_e
    move/from16 v0, v84

    int-to-long v12, v0

    add-long v86, v86, v12

    .line 239
    add-int/lit8 v66, v66, -0x1

    .line 240
    if-nez v66, :cond_f

    if-lez v70, :cond_f

    .line 241
    invoke-virtual/range {v80 .. v80}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v66

    .line 242
    invoke-virtual/range {v80 .. v80}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v84

    .line 243
    add-int/lit8 v70, v70, -0x1

    .line 246
    :cond_f
    aget v4, v6, v47

    int-to-long v12, v4

    add-long v56, v56, v12

    .line 247
    add-int/lit8 v68, v68, -0x1

    .line 197
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_6

    .line 228
    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    .line 250
    :cond_11
    if-nez v67, :cond_12

    const/4 v4, 0x1

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 252
    :goto_b
    if-lez v71, :cond_14

    .line 253
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_c
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 254
    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 255
    add-int/lit8 v71, v71, -0x1

    goto :goto_b

    .line 250
    :cond_12
    const/4 v4, 0x0

    goto :goto_a

    .line 253
    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    .line 260
    :cond_14
    if-nez v69, :cond_15

    if-nez v66, :cond_15

    if-nez v68, :cond_15

    if-eqz v70, :cond_16

    .line 262
    :cond_15
    const-string/jumbo v4, "AtomParsers"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Inconsistent stbl box for track "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": remainingSynchronizationSamples "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v69

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v66

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", remainingSamplesInChunk "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v68

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", remainingTimestampDeltaChanges "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v70

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v47    # "i":I
    .end local v56    # "offset":J
    .end local v68    # "remainingSamplesInChunk":I
    :cond_16
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_17

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 288
    :cond_17
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 289
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 269
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    :cond_18
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [J

    move-object/from16 v22, v0

    .line 270
    .local v22, "chunkOffsetsBytes":[J
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 271
    .local v23, "chunkSampleCounts":[I
    :goto_e
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 272
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v12, v22, v4

    .line 273
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v12, v23, v4

    goto :goto_e

    .line 275
    :cond_19
    invoke-interface/range {v74 .. v74}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v43

    .line 276
    .local v43, "fixedSampleSize":I
    move/from16 v0, v84

    int-to-long v12, v0

    move/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v12, v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v59

    .line 278
    .local v59, "rechunkedResults":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    move-object/from16 v0, v59

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 279
    .restart local v5    # "offsets":[J
    move-object/from16 v0, v59

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 280
    .restart local v6    # "sizes":[I
    move-object/from16 v0, v59

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 281
    move-object/from16 v0, v59

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 282
    .restart local v8    # "timestamps":[J
    move-object/from16 v0, v59

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .restart local v9    # "flags":[I
    goto :goto_d

    .line 298
    .end local v22    # "chunkOffsetsBytes":[J
    .end local v23    # "chunkSampleCounts":[I
    .end local v43    # "fixedSampleSize":I
    .end local v59    # "rechunkedResults":Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    array-length v4, v8

    const/4 v12, 0x2

    if-lt v4, v12, :cond_1c

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v12, 0x0

    aget-wide v30, v4, v12

    .line 304
    .local v30, "editStartTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v10, v4, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v28, v30, v12

    .line 306
    .local v28, "editEndTime":J
    move-wide/from16 v50, v86

    .line 307
    .local v50, "lastSampleEndTime":J
    const/4 v4, 0x0

    aget-wide v12, v8, v4

    cmp-long v4, v12, v30

    if-gtz v4, :cond_1c

    const/4 v4, 0x1

    aget-wide v12, v8, v4

    cmp-long v4, v30, v12

    if-gez v4, :cond_1c

    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    aget-wide v12, v8, v4

    cmp-long v4, v12, v28

    if-gez v4, :cond_1c

    cmp-long v4, v28, v50

    if-gtz v4, :cond_1c

    .line 309
    sub-long v60, v50, v28

    .line 310
    .local v60, "paddingTimeUnits":J
    const/4 v4, 0x0

    aget-wide v12, v8, v4

    sub-long v10, v30, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v38

    .line 312
    .local v38, "encoderDelay":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v10, v60

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v40

    .line 314
    .local v40, "encoderPadding":J
    const-wide/16 v12, 0x0

    cmp-long v4, v38, v12

    if-nez v4, :cond_1b

    const-wide/16 v12, 0x0

    cmp-long v4, v40, v12

    if-eqz v4, :cond_1c

    :cond_1b
    const-wide/32 v12, 0x7fffffff

    cmp-long v4, v38, v12

    if-gtz v4, :cond_1c

    const-wide/32 v12, 0x7fffffff

    cmp-long v4, v40, v12

    if-gtz v4, :cond_1c

    .line 316
    move-wide/from16 v0, v38

    long-to-int v4, v0

    move-object/from16 v0, p2

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 317
    move-wide/from16 v0, v40

    long-to-int v4, v0

    move-object/from16 v0, p2

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 318
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 319
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 324
    .end local v28    # "editEndTime":J
    .end local v30    # "editStartTime":J
    .end local v38    # "encoderDelay":J
    .end local v40    # "encoderPadding":J
    .end local v50    # "lastSampleEndTime":J
    .end local v60    # "paddingTimeUnits":J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_1e

    .line 328
    const/16 v47, 0x0

    .restart local v47    # "i":I
    :goto_f
    array-length v4, v8

    move/from16 v0, v47

    if-ge v0, v4, :cond_1d

    .line 329
    aget-wide v12, v8, v47

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    sub-long v10, v12, v14

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v8, v47

    .line 328
    add-int/lit8 v47, v47, 0x1

    goto :goto_f

    .line 332
    :cond_1d
    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 336
    .end local v47    # "i":I
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_20

    const/16 v58, 0x1

    .line 339
    .local v58, "omitClippedSample":Z
    :goto_10
    const/16 v35, 0x0

    .line 340
    .local v35, "editedSampleCount":I
    const/16 v54, 0x0

    .line 341
    .local v54, "nextSampleIndex":I
    const/16 v24, 0x0

    .line 342
    .local v24, "copyMetadata":Z
    const/16 v47, 0x0

    .restart local v47    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_22

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v52, v4, v47

    .line 344
    .local v52, "mediaTime":J
    const-wide/16 v12, -0x1

    cmp-long v4, v52, v12

    if-eqz v4, :cond_1f

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v47

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 347
    .local v10, "duration":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v52

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v75

    .line 348
    .local v75, "startIndex":I
    add-long v12, v52, v10

    const/4 v4, 0x0

    move/from16 v0, v58

    invoke-static {v8, v12, v13, v0, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v42

    .line 350
    .local v42, "endIndex":I
    sub-int v4, v42, v75

    add-int v35, v35, v4

    .line 351
    move/from16 v0, v54

    move/from16 v1, v75

    if-eq v0, v1, :cond_21

    const/4 v4, 0x1

    :goto_12
    or-int v24, v24, v4

    .line 352
    move/from16 v54, v42

    .line 342
    .end local v10    # "duration":J
    .end local v42    # "endIndex":I
    .end local v75    # "startIndex":I
    :cond_1f
    add-int/lit8 v47, v47, 0x1

    goto :goto_11

    .line 336
    .end local v24    # "copyMetadata":Z
    .end local v35    # "editedSampleCount":I
    .end local v47    # "i":I
    .end local v52    # "mediaTime":J
    .end local v54    # "nextSampleIndex":I
    .end local v58    # "omitClippedSample":Z
    :cond_20
    const/16 v58, 0x0

    goto :goto_10

    .line 351
    .restart local v10    # "duration":J
    .restart local v24    # "copyMetadata":Z
    .restart local v35    # "editedSampleCount":I
    .restart local v42    # "endIndex":I
    .restart local v47    # "i":I
    .restart local v52    # "mediaTime":J
    .restart local v54    # "nextSampleIndex":I
    .restart local v58    # "omitClippedSample":Z
    .restart local v75    # "startIndex":I
    :cond_21
    const/4 v4, 0x0

    goto :goto_12

    .line 355
    .end local v10    # "duration":J
    .end local v42    # "endIndex":I
    .end local v52    # "mediaTime":J
    .end local v75    # "startIndex":I
    :cond_22
    move/from16 v0, v35

    move/from16 v1, v72

    if-eq v0, v1, :cond_25

    const/4 v4, 0x1

    :goto_13
    or-int v24, v24, v4

    .line 358
    if-eqz v24, :cond_26

    move/from16 v0, v35

    new-array v0, v0, [J

    move-object/from16 v34, v0

    .line 359
    .local v34, "editedOffsets":[J
    :goto_14
    if-eqz v24, :cond_27

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 360
    .local v36, "editedSizes":[I
    :goto_15
    if-eqz v24, :cond_28

    const/16 v33, 0x0

    .line 361
    .local v33, "editedMaximumSize":I
    :goto_16
    if-eqz v24, :cond_29

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 362
    .local v32, "editedFlags":[I
    :goto_17
    move/from16 v0, v35

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .line 363
    .local v37, "editedTimestamps":[J
    const-wide/16 v62, 0x0

    .line 364
    .local v62, "pts":J
    const/16 v73, 0x0

    .line 365
    .local v73, "sampleIndex":I
    const/16 v47, 0x0

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_2b

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v52, v4, v47

    .line 367
    .restart local v52    # "mediaTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v47

    .line 368
    .restart local v10    # "duration":J
    const-wide/16 v12, -0x1

    cmp-long v4, v52, v12

    if-eqz v4, :cond_2a

    .line 369
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v44, v52, v12

    .line 371
    .local v44, "endMediaTime":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v52

    invoke-static {v8, v0, v1, v4, v12}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v75

    .line 372
    .restart local v75    # "startIndex":I
    const/4 v4, 0x0

    move-wide/from16 v0, v44

    move/from16 v2, v58

    invoke-static {v8, v0, v1, v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v42

    .line 373
    .restart local v42    # "endIndex":I
    if-eqz v24, :cond_23

    .line 374
    sub-int v25, v42, v75

    .line 375
    .local v25, "count":I
    move/from16 v0, v75

    move-object/from16 v1, v34

    move/from16 v2, v73

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    move/from16 v0, v75

    move-object/from16 v1, v36

    move/from16 v2, v73

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    move/from16 v0, v75

    move-object/from16 v1, v32

    move/from16 v2, v73

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    .end local v25    # "count":I
    :cond_23
    move/from16 v49, v75

    .local v49, "j":I
    :goto_19
    move/from16 v0, v49

    move/from16 v1, v42

    if-ge v0, v1, :cond_2a

    .line 380
    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    move-wide/from16 v12, v62

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v64

    .line 381
    .local v64, "ptsUs":J
    aget-wide v12, v8, v49

    sub-long v12, v12, v52

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v82

    .line 383
    .local v82, "timeInSegmentUs":J
    add-long v12, v64, v82

    aput-wide v12, v37, v73

    .line 384
    if-eqz v24, :cond_24

    aget v4, v36, v73

    move/from16 v0, v33

    if-le v4, v0, :cond_24

    .line 385
    aget v33, v6, v49

    .line 387
    :cond_24
    add-int/lit8 v73, v73, 0x1

    .line 379
    add-int/lit8 v49, v49, 0x1

    goto :goto_19

    .line 355
    .end local v10    # "duration":J
    .end local v32    # "editedFlags":[I
    .end local v33    # "editedMaximumSize":I
    .end local v34    # "editedOffsets":[J
    .end local v36    # "editedSizes":[I
    .end local v37    # "editedTimestamps":[J
    .end local v42    # "endIndex":I
    .end local v44    # "endMediaTime":J
    .end local v49    # "j":I
    .end local v52    # "mediaTime":J
    .end local v62    # "pts":J
    .end local v64    # "ptsUs":J
    .end local v73    # "sampleIndex":I
    .end local v75    # "startIndex":I
    .end local v82    # "timeInSegmentUs":J
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_26
    move-object/from16 v34, v5

    .line 358
    goto/16 :goto_14

    .restart local v34    # "editedOffsets":[J
    :cond_27
    move-object/from16 v36, v6

    .line 359
    goto/16 :goto_15

    .restart local v36    # "editedSizes":[I
    :cond_28
    move/from16 v33, v7

    .line 360
    goto/16 :goto_16

    .restart local v33    # "editedMaximumSize":I
    :cond_29
    move-object/from16 v32, v9

    .line 361
    goto/16 :goto_17

    .line 390
    .restart local v10    # "duration":J
    .restart local v32    # "editedFlags":[I
    .restart local v37    # "editedTimestamps":[J
    .restart local v52    # "mediaTime":J
    .restart local v62    # "pts":J
    .restart local v73    # "sampleIndex":I
    :cond_2a
    add-long v62, v62, v10

    .line 365
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_18

    .line 393
    .end local v10    # "duration":J
    .end local v52    # "mediaTime":J
    :cond_2b
    const/16 v46, 0x0

    .line 394
    .local v46, "hasSyncSample":Z
    const/16 v47, 0x0

    :goto_1a
    move-object/from16 v0, v32

    array-length v4, v0

    move/from16 v0, v47

    if-ge v0, v4, :cond_2d

    if-nez v46, :cond_2d

    .line 395
    aget v4, v32, v47

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_1b
    or-int v46, v46, v4

    .line 394
    add-int/lit8 v47, v47, 0x1

    goto :goto_1a

    .line 395
    :cond_2c
    const/4 v4, 0x0

    goto :goto_1b

    .line 397
    :cond_2d
    if-nez v46, :cond_2e

    .line 398
    new-instance v4, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v12, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v4, v12}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_2e
    new-instance v12, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v13, v34

    move-object/from16 v14, v36

    move/from16 v15, v33

    move-object/from16 v16, v37

    move-object/from16 v17, v32

    invoke-direct/range {v12 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    move-object v4, v12

    goto/16 :goto_1
.end method

.method private static parseStsd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 21
    .param p0, "stsd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 590
    const/16 v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 592
    .local v20, "numberOfEntries":I
    new-instance v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 593
    .local v8, "out":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 594
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 595
    .local v3, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 596
    .local v4, "childAtomSize":I
    if-lez v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v5, "childAtomSize should be positive"

    invoke-static {v1, v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 598
    .local v2, "childAtomType":I
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v2, v1, :cond_0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v2, v1, :cond_3

    :cond_0
    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    .line 603
    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIIILorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 623
    :cond_1
    :goto_2
    add-int v1, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 593
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 596
    .end local v2    # "childAtomType":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 605
    .restart local v2    # "childAtomType":I
    :cond_3
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v2, v1, :cond_4

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v2, v1, :cond_5

    :cond_4
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move/from16 v14, p1

    move-object/from16 v15, p3

    move/from16 v16, p5

    move-object/from16 v17, p4

    move-object/from16 v18, v8

    move/from16 v19, v9

    .line 612
    invoke-static/range {v10 .. v19}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    .line 614
    :cond_5
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v2, v1, :cond_6

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v2, v1, :cond_6

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v2, v1, :cond_6

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v2, v1, :cond_6

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v2, v1, :cond_7

    :cond_6
    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 617
    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_2

    .line 619
    :cond_7
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v2, v1, :cond_1

    .line 620
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "application/x-camera-motion"

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p4

    invoke-static {v1, v5, v6, v7, v0}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_2

    .line 625
    .end local v2    # "childAtomType":I
    .end local v3    # "childStartPosition":I
    .end local v4    # "childAtomSize":I
    :cond_8
    return-object v8
.end method

.method private static parseTextSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 15
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p7, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 631
    add-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 634
    const/4 v12, 0x0

    .line 635
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v10, 0x7fffffffffffffffL

    .line 638
    .local v10, "subsampleOffsetUs":J
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 639
    const-string/jumbo v3, "application/ttml+xml"

    .line 660
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, p7

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 663
    return-void

    .line 640
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 641
    const-string/jumbo v3, "application/x-quicktime-tx3g"

    .line 642
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, p3, -0x8

    add-int/lit8 v14, v2, -0x8

    .line 643
    .local v14, "sampleDescriptionLength":I
    new-array v13, v14, [B

    .line 644
    .local v13, "sampleDescriptionData":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v13, v2, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 645
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 646
    goto :goto_0

    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v13    # "sampleDescriptionData":[B
    .end local v14    # "sampleDescriptionLength":I
    :cond_1
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 647
    const-string/jumbo v3, "application/x-mp4-vtt"

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 648
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 649
    const-string/jumbo v3, "application/ttml+xml"

    .line 650
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 651
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 653
    const-string/jumbo v3, "application/x-mp4-cea-608"

    .line 654
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p7

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    goto :goto_0

    .line 657
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private static parseTkhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 20
    .param p0, "tkhd"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 480
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 482
    .local v12, "fullAtom":I
    invoke-static {v12}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v16

    .line 484
    .local v16, "version":I
    if-nez v16, :cond_2

    const/16 v17, 0x8

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 487
    .local v15, "trackId":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 488
    const/4 v10, 0x1

    .line 489
    .local v10, "durationUnknown":Z
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 490
    .local v9, "durationPosition":I
    if-nez v16, :cond_3

    const/4 v8, 0x4

    .line 491
    .local v8, "durationByteCount":I
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    add-int v18, v9, v13

    aget-byte v17, v17, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 493
    const/4 v10, 0x0

    .line 498
    :cond_0
    if-eqz v10, :cond_5

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 500
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 510
    .local v6, "duration":J
    :cond_1
    :goto_3
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 512
    .local v2, "a00":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 513
    .local v3, "a01":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 515
    .local v4, "a10":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 518
    .local v5, "a11":I
    const/high16 v11, 0x10000

    .line 519
    .local v11, "fixedOne":I
    if-nez v2, :cond_7

    if-ne v3, v11, :cond_7

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    if-nez v5, :cond_7

    .line 520
    const/16 v14, 0x5a

    .line 530
    .local v14, "rotationDegrees":I
    :goto_4
    new-instance v17, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6, v7, v14}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v17

    .line 484
    .end local v2    # "a00":I
    .end local v3    # "a01":I
    .end local v4    # "a10":I
    .end local v5    # "a11":I
    .end local v6    # "duration":J
    .end local v8    # "durationByteCount":I
    .end local v9    # "durationPosition":I
    .end local v10    # "durationUnknown":Z
    .end local v11    # "fixedOne":I
    .end local v13    # "i":I
    .end local v14    # "rotationDegrees":I
    .end local v15    # "trackId":I
    :cond_2
    const/16 v17, 0x10

    goto :goto_0

    .line 490
    .restart local v9    # "durationPosition":I
    .restart local v10    # "durationUnknown":Z
    .restart local v15    # "trackId":I
    :cond_3
    const/16 v8, 0x8

    goto :goto_1

    .line 491
    .restart local v8    # "durationByteCount":I
    .restart local v13    # "i":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 502
    :cond_5
    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 503
    .restart local v6    # "duration":J
    :goto_5
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-nez v17, :cond_1

    .line 506
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 502
    .end local v6    # "duration":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_5

    .line 521
    .restart local v2    # "a00":I
    .restart local v3    # "a01":I
    .restart local v4    # "a10":I
    .restart local v5    # "a11":I
    .restart local v6    # "duration":J
    .restart local v11    # "fixedOne":I
    :cond_7
    if-nez v2, :cond_8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    if-ne v4, v11, :cond_8

    if-nez v5, :cond_8

    .line 522
    const/16 v14, 0x10e

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 523
    .end local v14    # "rotationDegrees":I
    :cond_8
    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 524
    const/16 v14, 0xb4

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 527
    .end local v14    # "rotationDegrees":I
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "rotationDegrees":I
    goto :goto_4
.end method

.method public static parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .locals 32
    .param p0, "trak"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 68
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v26

    .line 69
    .local v26, "mdia":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v30

    .line 70
    .local v30, "trackType":I
    const/4 v2, -0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_0

    .line 71
    const/4 v9, 0x0

    .line 92
    :goto_0
    return-object v9

    .line 74
    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v29

    .line 75
    .local v29, "tkhdData":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 76
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide p2

    .line 78
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    .line 80
    .local v6, "movieTimescale":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 81
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    .local v16, "durationUs":J
    :goto_1
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 86
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v27

    .line 88
    .local v27, "stbl":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v25

    .line 89
    .local v25, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    .line 90
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    move-object/from16 v0, v25

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 89
    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v28

    .line 91
    .local v28, "stsdData":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v24

    .line 92
    .local v24, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    move-object/from16 v0, v28

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v2, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 83
    .end local v16    # "durationUs":J
    .end local v24    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .end local v25    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v27    # "stbl":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v28    # "stsdData":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    :cond_2
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .restart local v16    # "durationUs":J
    goto :goto_1

    .line 92
    .restart local v24    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .restart local v25    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v27    # "stbl":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .restart local v28    # "stsdData":Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    :cond_3
    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 93
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move/from16 v19, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v20, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v21, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [J

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [J

    move/from16 v11, v30

    move-wide v14, v6

    invoke-direct/range {v9 .. v23}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer2/Format;I[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0
.end method

.method public static parseUdta(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 7
    .param p0, "udtaAtom"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 413
    if-eqz p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-object v4

    .line 418
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 419
    .local v3, "udtaData":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 420
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 421
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 422
    .local v0, "atomPosition":I
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 423
    .local v1, "atomSize":I
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 424
    .local v2, "atomType":I
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v2, v5, :cond_2

    .line 425
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 426
    add-int v4, v0, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v4

    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v5, v1, -0x8

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIIILorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 30
    .param p0, "parent"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .param p7, "out"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 668
    add-int/lit8 v5, p2, 0x8

    add-int/lit8 v5, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 670
    const/16 v5, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 672
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    .line 673
    .local v11, "height":I
    const/16 v28, 0x0

    .line 674
    .local v28, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v15, 0x3f800000    # 1.0f

    .line 675
    .local v15, "pixelWidthHeightRatio":F
    const/16 v5, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v23

    .line 678
    .local v23, "childPosition":I
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 679
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    .line 680
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 683
    :cond_0
    const/4 v13, 0x0

    .line 684
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v6, 0x0

    .line 685
    .local v6, "mimeType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 687
    .local v16, "projectionData":[B
    const/16 v17, -0x1

    .line 688
    .local v17, "stereoMode":I
    :goto_0
    sub-int v5, v23, p2

    move/from16 v0, p3

    if-ge v5, v0, :cond_1

    .line 689
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v24

    .line 691
    .local v24, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v21

    .line 692
    .local v21, "childAtomSize":I
    if-nez v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sub-int v5, v5, p2

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    .line 759
    .end local v21    # "childAtomSize":I
    .end local v24    # "childStartPosition":I
    :cond_1
    if-nez v6, :cond_12

    .line 766
    :goto_1
    return-void

    .line 696
    .restart local v21    # "childAtomSize":I
    .restart local v24    # "childStartPosition":I
    :cond_2
    if-lez v21, :cond_4

    const/4 v5, 0x1

    :goto_2
    const-string/jumbo v7, "childAtomSize should be positive"

    invoke-static {v5, v7}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v22

    .line 698
    .local v22, "childAtomType":I
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_6

    .line 699
    if-nez v6, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 700
    const-string/jumbo v6, "video/avc"

    .line 701
    add-int/lit8 v5, v24, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 702
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/AvcConfig;

    move-result-object v20

    .line 703
    .local v20, "avcConfig":Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
    move-object/from16 v0, v20

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 704
    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 705
    if-nez v28, :cond_3

    .line 706
    move-object/from16 v0, v20

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 755
    .end local v20    # "avcConfig":Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
    :cond_3
    :goto_4
    add-int v23, v23, v21

    .line 756
    goto :goto_0

    .line 696
    .end local v22    # "childAtomType":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 699
    .restart local v22    # "childAtomType":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 708
    :cond_6
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_8

    .line 709
    if-nez v6, :cond_7

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 710
    const-string/jumbo v6, "video/hevc"

    .line 711
    add-int/lit8 v5, v24, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 712
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/HevcConfig;

    move-result-object v25

    .line 713
    .local v25, "hevcConfig":Lorg/telegram/messenger/exoplayer2/video/HevcConfig;
    move-object/from16 v0, v25

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 714
    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    goto :goto_4

    .line 709
    .end local v25    # "hevcConfig":Lorg/telegram/messenger/exoplayer2/video/HevcConfig;
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 715
    :cond_8
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_b

    .line 716
    if-nez v6, :cond_9

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 717
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    :goto_7
    goto :goto_4

    .line 716
    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    .line 717
    :cond_a
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    goto :goto_7

    .line 718
    :cond_b
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_d

    .line 719
    if-nez v6, :cond_c

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 720
    const-string/jumbo v6, "video/3gpp"

    goto :goto_4

    .line 719
    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    .line 721
    :cond_d
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_f

    .line 722
    if-nez v6, :cond_e

    const/4 v5, 0x1

    :goto_9
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 724
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v27

    .line 725
    .local v27, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v6    # "mimeType":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 726
    .restart local v6    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 727
    goto :goto_4

    .line 722
    .end local v27    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    .line 727
    :cond_f
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_10

    .line 728
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)F

    move-result v15

    .line 729
    const/16 v28, 0x1

    goto/16 :goto_4

    .line 730
    :cond_10
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_11

    .line 731
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v16

    goto/16 :goto_4

    .line 732
    :cond_11
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_3

    .line 733
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v29

    .line 734
    .local v29, "version":I
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 735
    if-nez v29, :cond_3

    .line 736
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v26

    .line 737
    .local v26, "layout":I
    packed-switch v26, :pswitch_data_0

    goto/16 :goto_4

    .line 739
    :pswitch_0
    const/16 v17, 0x0

    .line 740
    goto/16 :goto_4

    .line 742
    :pswitch_1
    const/16 v17, 0x1

    .line 743
    goto/16 :goto_4

    .line 745
    :pswitch_2
    const/16 v17, 0x2

    .line 746
    goto/16 :goto_4

    .line 748
    :pswitch_3
    const/16 v17, 0x3

    .line 749
    goto/16 :goto_4

    .line 763
    .end local v21    # "childAtomSize":I
    .end local v22    # "childAtomType":I
    .end local v24    # "childStartPosition":I
    .end local v26    # "layout":I
    .end local v29    # "version":I
    :cond_12
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v18, 0x0

    move/from16 v14, p5

    move-object/from16 v19, p6

    invoke-static/range {v5 .. v19}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/video/ColorInfo;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    move-object/from16 v0, p7

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_1

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
