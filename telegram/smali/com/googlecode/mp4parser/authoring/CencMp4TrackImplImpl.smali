.class public Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;
.super Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.source "CencMp4TrackImplImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private defaultKeyId:Ljava/util/UUID;

.field private sampleEncryptionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V
    .locals 46
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "trackBox"    # Lcom/coremedia/iso/boxes/TrackBox;
    .param p3, "fragments"    # [Lcom/coremedia/iso/IsoFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;-><init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V

    .line 44
    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v28

    check-cast v28, Lcom/coremedia/iso/boxes/SchemeTypeBox;

    .line 45
    .local v28, "schm":Lcom/coremedia/iso/boxes/SchemeTypeBox;
    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_1

    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getSchemeType()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "cenc"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1

    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/SchemeTypeBox;->getSchemeType()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "cbc1"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1

    :cond_0
    new-instance v40, Ljava/lang/AssertionError;

    const-string/jumbo v41, "Track must be CENC (cenc or cbc1) encrypted"

    invoke-direct/range {v40 .. v41}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v40

    .line 47
    :cond_1
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v34

    .line 49
    .local v34, "trackId":J
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    const-class v41, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface/range {v40 .. v41}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_c

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/Box;

    invoke-interface/range {v40 .. v40}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    const-class v41, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-interface/range {v40 .. v41}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_4

    .line 163
    :cond_3
    return-void

    .line 52
    :cond_4
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 53
    .local v17, "movieFragmentBox":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v40, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v37

    .line 54
    .local v37, "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_5
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 55
    .local v36, "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v44

    cmp-long v40, v44, v34

    if-nez v40, :cond_5

    .line 56
    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v32

    check-cast v32, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;

    .line 57
    .local v32, "tenc":Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;
    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefault_KID()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->defaultKeyId:Ljava/util/UUID;

    .line 60
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v40

    if-eqz v40, :cond_6

    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/Box;

    invoke-interface/range {v40 .. v40}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v8

    .line 62
    .local v8, "base":Lcom/coremedia/iso/boxes/Container;
    invoke-virtual/range {v36 .. v36}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v10

    .line 68
    .local v10, "baseOffset":J
    :goto_0
    new-instance v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;-><init>(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;Lcom/coremedia/iso/boxes/Container;)V

    invoke-virtual/range {v40 .. v40}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->invoke()Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    move-result-object v26

    .line 69
    .local v26, "saizSaioPair":Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->getSaio()Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    move-result-object v21

    .line 70
    .local v21, "saio":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->getSaiz()Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    move-result-object v25

    .line 72
    .local v25, "saiz":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_7

    if-nez v21, :cond_7

    new-instance v40, Ljava/lang/AssertionError;

    invoke-direct/range {v40 .. v40}, Ljava/lang/AssertionError;-><init>()V

    throw v40

    .line 64
    .end local v8    # "base":Lcom/coremedia/iso/boxes/Container;
    .end local v10    # "baseOffset":J
    .end local v21    # "saio":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    .end local v25    # "saiz":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    .end local v26    # "saizSaioPair":Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    :cond_6
    move-object/from16 v8, v17

    .line 65
    .restart local v8    # "base":Lcom/coremedia/iso/boxes/Container;
    const-wide/16 v10, 0x0

    .restart local v10    # "baseOffset":J
    goto :goto_0

    .line 73
    .restart local v21    # "saio":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    .restart local v25    # "saiz":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    .restart local v26    # "saizSaioPair":Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v24

    .line 74
    .local v24, "saioOffsets":[J
    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_8

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v40, v0

    const-class v43, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v43

    move/from16 v0, v40

    move/from16 v1, v43

    if-eq v0, v1, :cond_8

    new-instance v40, Ljava/lang/AssertionError;

    invoke-direct/range {v40 .. v40}, Ljava/lang/AssertionError;-><init>()V

    throw v40

    .line 75
    :cond_8
    sget-boolean v40, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->$assertionsDisabled:Z

    if-nez v40, :cond_9

    if-nez v25, :cond_9

    new-instance v40, Ljava/lang/AssertionError;

    invoke-direct/range {v40 .. v40}, Ljava/lang/AssertionError;-><init>()V

    throw v40

    .line 77
    :cond_9
    const-class v40, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v38

    .line 78
    .local v38, "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    const/16 v27, 0x0

    .line 79
    .local v27, "sampleNo":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v15, v0, :cond_5

    .line 80
    move-object/from16 v0, v38

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v20

    .line 81
    .local v20, "numSamples":I
    aget-wide v22, v24, v15

    .line 82
    .local v22, "offset":J
    const-wide/16 v18, 0x0

    .line 84
    .local v18, "length":J
    move/from16 v16, v27

    .local v16, "j":I
    :goto_2
    add-int v40, v27, v20

    move/from16 v0, v16

    move/from16 v1, v40

    if-lt v0, v1, :cond_a

    .line 87
    add-long v44, v10, v22

    move-wide/from16 v0, v44

    move-wide/from16 v2, v18

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v39

    .line 88
    .local v39, "trunsCencSampleAuxData":Ljava/nio/ByteBuffer;
    move/from16 v16, v27

    :goto_3
    add-int v40, v27, v20

    move/from16 v0, v16

    move/from16 v1, v40

    if-lt v0, v1, :cond_b

    .line 96
    add-int v27, v27, v20

    .line 79
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 85
    .end local v39    # "trunsCencSampleAuxData":Ljava/nio/ByteBuffer;
    :cond_a
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v18, v18, v44

    .line 84
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 89
    .restart local v39    # "trunsCencSampleAuxData":Ljava/nio/ByteBuffer;
    :cond_b
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v6

    .line 90
    .local v6, "auxInfoSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    move-object/from16 v40, v0

    .line 91
    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v43

    int-to-long v0, v6

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v39

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    move-result-object v43

    .line 90
    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 103
    .end local v6    # "auxInfoSize":I
    .end local v8    # "base":Lcom/coremedia/iso/boxes/Container;
    .end local v10    # "baseOffset":J
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v17    # "movieFragmentBox":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v18    # "length":J
    .end local v20    # "numSamples":I
    .end local v21    # "saio":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    .end local v22    # "offset":J
    .end local v24    # "saioOffsets":[J
    .end local v25    # "saiz":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    .end local v26    # "saizSaioPair":Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    .end local v27    # "sampleNo":I
    .end local v32    # "tenc":Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;
    .end local v36    # "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v37    # "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    .end local v38    # "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    .end local v39    # "trunsCencSampleAuxData":Ljava/nio/ByteBuffer;
    :cond_c
    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v32

    check-cast v32, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;

    .line 104
    .restart local v32    # "tenc":Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;
    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefault_KID()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->defaultKeyId:Ljava/util/UUID;

    .line 105
    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/stco[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    .line 107
    .local v9, "chunkOffsetBox":Lcom/coremedia/iso/boxes/ChunkOffsetBox;
    if-nez v9, :cond_d

    .line 108
    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]/co64[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v9

    .end local v9    # "chunkOffsetBox":Lcom/coremedia/iso/boxes/ChunkOffsetBox;
    check-cast v9, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    .line 110
    .restart local v9    # "chunkOffsetBox":Lcom/coremedia/iso/boxes/ChunkOffsetBox;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v40

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v41

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->blowup(I)[J

    move-result-object v12

    .line 113
    .local v12, "chunkSizes":[J
    new-instance v41, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    const-string/jumbo v40, "mdia[0]/minf[0]/stbl[0]"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/Container;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;-><init>(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;Lcom/coremedia/iso/boxes/Container;)V

    invoke-virtual/range {v41 .. v41}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->invoke()Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;

    move-result-object v26

    .line 114
    .restart local v26    # "saizSaioPair":Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    invoke-static/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->access$0(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;)Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    move-result-object v21

    .line 115
    .restart local v21    # "saio":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    invoke-static/range {v26 .. v26}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->access$1(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;)Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    move-result-object v25

    .line 117
    .restart local v25    # "saiz":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v40

    check-cast v40, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-virtual/range {v40 .. v40}, Lcom/coremedia/iso/boxes/MovieBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v33

    .line 119
    .local v33, "topLevel":Lcom/coremedia/iso/boxes/Container;
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_10

    .line 120
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    const/16 v41, 0x0

    aget-wide v22, v40, v41

    .line 121
    .restart local v22    # "offset":J
    const/16 v29, 0x0

    .line 122
    .local v29, "sizeInTotal":I
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getDefaultSampleInfoSize()I

    move-result v40

    if-lez v40, :cond_f

    .line 123
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getDefaultSampleInfoSize()I

    move-result v41

    mul-int v40, v40, v41

    add-int v29, v29, v40

    .line 129
    :cond_e
    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    move-wide/from16 v3, v40

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 130
    .local v13, "chunksCencSampleAuxData":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_3

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    move-object/from16 v40, v0

    .line 132
    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v41

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    move-result-object v41

    .line 131
    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 125
    .end local v13    # "chunksCencSampleAuxData":Ljava/nio/ByteBuffer;
    .end local v15    # "i":I
    :cond_f
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_e

    .line 126
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleInfoSizes()[S

    move-result-object v40

    aget-short v40, v40, v15

    add-int v29, v29, v40

    .line 125
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 136
    .end local v15    # "i":I
    .end local v22    # "offset":J
    .end local v29    # "sizeInTotal":I
    :cond_10
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    array-length v0, v12

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_14

    .line 137
    const/4 v14, 0x0

    .line 138
    .local v14, "currentSampleNo":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    array-length v0, v12

    move/from16 v40, v0

    move/from16 v0, v40

    if-ge v15, v0, :cond_3

    .line 139
    invoke-virtual/range {v21 .. v21}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getOffsets()[J

    move-result-object v40

    aget-wide v22, v40, v15

    .line 140
    .restart local v22    # "offset":J
    const-wide/16 v30, 0x0

    .line 141
    .local v30, "size":J
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getDefaultSampleInfoSize()I

    move-result v40

    if-lez v40, :cond_12

    .line 142
    invoke-virtual/range {v25 .. v25}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSampleCount()I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    mul-long v40, v40, v42

    add-long v30, v30, v40

    .line 149
    :cond_11
    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    move-wide/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 150
    .restart local v13    # "chunksCencSampleAuxData":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_7
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    cmp-long v40, v40, v42

    if-ltz v40, :cond_13

    .line 157
    int-to-long v0, v14

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v14, v0

    .line 138
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 144
    .end local v13    # "chunksCencSampleAuxData":Ljava/nio/ByteBuffer;
    .end local v16    # "j":I
    :cond_12
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_8
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v40, v0

    aget-wide v42, v12, v15

    cmp-long v40, v40, v42

    if-gez v40, :cond_11

    .line 145
    add-int v40, v14, v16

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v30, v30, v40

    .line 144
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 151
    .restart local v13    # "chunksCencSampleAuxData":Ljava/nio/ByteBuffer;
    :cond_13
    add-int v40, v14, v16

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getSize(I)S

    move-result v40

    move/from16 v0, v40

    int-to-long v6, v0

    .line 152
    .local v6, "auxInfoSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    move-object/from16 v40, v0

    .line 154
    invoke-virtual/range {v32 .. v32}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v13, v6, v7}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    move-result-object v41

    .line 152
    invoke-interface/range {v40 .. v41}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 160
    .end local v6    # "auxInfoSize":J
    .end local v13    # "chunksCencSampleAuxData":Ljava/nio/ByteBuffer;
    .end local v14    # "currentSampleNo":I
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v22    # "offset":J
    .end local v30    # "size":J
    :cond_14
    new-instance v40, Ljava/lang/RuntimeException;

    const-string/jumbo v41, "Number of saio offsets must be either 1 or number of chunks"

    invoke-direct/range {v40 .. v41}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v40
.end method

.method private parseCencAuxDataFormat(ILjava/nio/ByteBuffer;J)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    .locals 9
    .param p1, "ivSize"    # I
    .param p2, "chunksCencSampleAuxData"    # Ljava/nio/ByteBuffer;
    .param p3, "auxInfoSize"    # J

    .prologue
    .line 166
    new-instance v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    invoke-direct {v0}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;-><init>()V

    .line 167
    .local v0, "cadf":Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    .line 168
    new-array v3, p1, [B

    iput-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    .line 169
    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->iv:[B

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 170
    int-to-long v4, p1

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    .line 171
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 172
    .local v2, "numOfPairs":I
    new-array v3, v2, [Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    iput-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 180
    .end local v1    # "i":I
    .end local v2    # "numOfPairs":I
    :cond_0
    return-object v0

    .line 174
    .restart local v1    # "i":I
    .restart local v2    # "numOfPairs":I
    :cond_1
    iget-object v3, v0, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->pairs:[Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    .line 175
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 176
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 174
    invoke-virtual {v0, v4, v6, v7}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->createPair(IJ)Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat$Pair;

    move-result-object v4

    aput-object v4, v3, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDefaultKeyId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->defaultKeyId:Ljava/util/UUID;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enc("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleEncryptionEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->sampleEncryptionEntries:Ljava/util/List;

    return-object v0
.end method

.method public hasSubSampleEncryption()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CencMp4TrackImpl{handler=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
