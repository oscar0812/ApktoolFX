.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
.super Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDuration:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 5
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p6, "spliceImmediateFlag"    # Z
    .param p7, "programSplicePts"    # J
    .param p9, "programSplicePlaybackPositionUs"    # J
    .param p12, "autoReturn"    # Z
    .param p13, "breakDuration"    # J
    .param p15, "uniqueProgramId"    # I
    .param p16, "availNum"    # I
    .param p17, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p11, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 52
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 53
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 54
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 55
    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 56
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 57
    iput-wide p9, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 58
    invoke-static/range {p11 .. p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 59
    move/from16 v0, p12

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 60
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    .line 61
    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 62
    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 63
    move/from16 v0, p17

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "componentSpliceListSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v0, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_4

    .line 77
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0    # "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v1    # "componentSpliceListSize":I
    .end local v2    # "i":I
    :cond_0
    move v3, v5

    .line 68
    goto :goto_0

    :cond_1
    move v3, v5

    .line 69
    goto :goto_1

    :cond_2
    move v3, v5

    .line 70
    goto :goto_2

    :cond_3
    move v3, v5

    .line 71
    goto :goto_3

    .line 79
    .restart local v0    # "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .restart local v1    # "componentSpliceListSize":I
    .restart local v2    # "i":I
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_5

    :goto_5
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 85
    return-void

    :cond_5
    move v4, v5

    .line 80
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;
    .locals 35
    .param p0, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v32

    .line 91
    .local v32, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    .line 92
    .local v10, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v11, 0x0

    .line 93
    .local v11, "outOfNetworkIndicator":Z
    const/4 v12, 0x0

    .line 94
    .local v12, "programSpliceFlag":Z
    const/4 v13, 0x0

    .line 95
    .local v13, "spliceImmediateFlag":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    .local v14, "programSplicePts":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 97
    .local v18, "componentSplices":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/16 v22, 0x0

    .line 98
    .local v22, "uniqueProgramId":I
    const/16 v23, 0x0

    .line 99
    .local v23, "availNum":I
    const/16 v24, 0x0

    .line 100
    .local v24, "availsExpected":I
    const/16 v19, 0x0

    .line 101
    .local v19, "autoReturn":Z
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 102
    .local v20, "duration":J
    if-nez v10, :cond_9

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v27

    .line 104
    .local v27, "headerByte":I
    move/from16 v0, v27

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    .line 105
    :goto_1
    and-int/lit8 v2, v27, 0x40

    if-eqz v2, :cond_4

    const/4 v12, 0x1

    .line 106
    :goto_2
    and-int/lit8 v2, v27, 0x20

    if-eqz v2, :cond_5

    const/16 v26, 0x1

    .line 107
    .local v26, "durationFlag":Z
    :goto_3
    and-int/lit8 v2, v27, 0x10

    if-eqz v2, :cond_6

    const/4 v13, 0x1

    .line 108
    :goto_4
    if-eqz v12, :cond_0

    if-nez v13, :cond_0

    .line 109
    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v14

    .line 111
    :cond_0
    if-nez v12, :cond_7

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v25

    .line 113
    .local v25, "componentCount":I
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .restart local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 116
    .local v3, "componentTag":I
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 117
    .local v4, "componentSplicePts":J
    if-nez v13, :cond_1

    .line 118
    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v4

    .line 120
    :cond_1
    new-instance v2, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 121
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V

    .line 120
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 91
    .end local v3    # "componentTag":I
    .end local v4    # "componentSplicePts":J
    .end local v10    # "spliceEventCancelIndicator":Z
    .end local v11    # "outOfNetworkIndicator":Z
    .end local v12    # "programSpliceFlag":Z
    .end local v13    # "spliceImmediateFlag":Z
    .end local v14    # "programSplicePts":J
    .end local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v19    # "autoReturn":Z
    .end local v20    # "duration":J
    .end local v22    # "uniqueProgramId":I
    .end local v23    # "availNum":I
    .end local v24    # "availsExpected":I
    .end local v25    # "componentCount":I
    .end local v26    # "durationFlag":Z
    .end local v27    # "headerByte":I
    .end local v30    # "i":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 104
    .restart local v10    # "spliceEventCancelIndicator":Z
    .restart local v11    # "outOfNetworkIndicator":Z
    .restart local v12    # "programSpliceFlag":Z
    .restart local v13    # "spliceImmediateFlag":Z
    .restart local v14    # "programSplicePts":J
    .restart local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .restart local v19    # "autoReturn":Z
    .restart local v20    # "duration":J
    .restart local v22    # "uniqueProgramId":I
    .restart local v23    # "availNum":I
    .restart local v24    # "availsExpected":I
    .restart local v27    # "headerByte":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 105
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 106
    :cond_5
    const/16 v26, 0x0

    goto :goto_3

    .line 107
    .restart local v26    # "durationFlag":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    .line 124
    :cond_7
    if-eqz v26, :cond_8

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .line 126
    .local v28, "firstByte":J
    const-wide/16 v6, 0x80

    and-long v6, v6, v28

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_a

    const/16 v19, 0x1

    .line 127
    :goto_6
    const-wide/16 v6, 0x1

    and-long v6, v6, v28

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    or-long v20, v6, v8

    .line 129
    .end local v28    # "firstByte":J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v22

    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v23

    .line 131
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 133
    .end local v26    # "durationFlag":Z
    .end local v27    # "headerByte":I
    :cond_9
    new-instance v7, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lorg/telegram/messenger/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v16

    move-wide/from16 v8, v32

    invoke-direct/range {v7 .. v24}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    .line 133
    return-object v7

    .line 126
    .restart local v26    # "durationFlag":Z
    .restart local v27    # "headerByte":I
    .restart local v28    # "firstByte":J
    :cond_a
    const/16 v19, 0x0

    goto :goto_6
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 175
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 176
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 178
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 179
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 181
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v0    # "componentSpliceListSize":I
    .end local v1    # "i":I
    :cond_0
    move v2, v4

    .line 172
    goto :goto_0

    :cond_1
    move v2, v4

    .line 173
    goto :goto_1

    :cond_2
    move v2, v4

    .line 174
    goto :goto_2

    :cond_3
    move v2, v4

    .line 175
    goto :goto_3

    .line 183
    .restart local v0    # "componentSpliceListSize":I
    .restart local v1    # "i":I
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    if-eqz v2, :cond_5

    :goto_5
    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void

    :cond_5
    move v3, v4

    .line 183
    goto :goto_5
.end method
