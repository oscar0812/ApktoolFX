.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


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
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p7, "utcSpliceTime"    # J
    .param p9, "autoReturn"    # Z
    .param p10, "breakDuration"    # J
    .param p12, "uniqueProgramId"    # I
    .param p13, "availNum"    # I
    .param p14, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;JZJIII)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p6, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 53
    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 54
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 55
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 56
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 57
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 58
    iput-boolean p9, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 59
    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDuration:J

    .line 60
    iput p12, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 61
    iput p13, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 62
    iput p14, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "componentSpliceListLength":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 73
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$000(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .end local v1    # "componentSpliceListLength":I
    .end local v2    # "i":I
    :cond_0
    move v3, v5

    .line 67
    goto :goto_0

    :cond_1
    move v3, v5

    .line 68
    goto :goto_1

    :cond_2
    move v3, v5

    .line 69
    goto :goto_2

    .line 75
    .restart local v0    # "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .restart local v1    # "componentSpliceListLength":I
    .restart local v2    # "i":I
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_4

    :goto_4
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDuration:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 82
    return-void

    :cond_4
    move v4, v5

    .line 77
    goto :goto_4
.end method

.method static synthetic access$300(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 34
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 147
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 32
    .param p0, "sectionData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 87
    .local v6, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 88
    .local v8, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v9, 0x0

    .line 89
    .local v9, "outOfNetworkIndicator":Z
    const/4 v10, 0x0

    .line 90
    .local v10, "programSpliceFlag":Z
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 91
    .local v12, "utcSpliceTime":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v11, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v17, 0x0

    .line 93
    .local v17, "uniqueProgramId":I
    const/16 v18, 0x0

    .line 94
    .local v18, "availNum":I
    const/16 v19, 0x0

    .line 95
    .local v19, "availsExpected":I
    const/4 v14, 0x0

    .line 96
    .local v14, "autoReturn":Z
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .local v15, "duration":J
    if-nez v8, :cond_7

    .line 98
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v26

    .line 99
    .local v26, "headerByte":I
    move/from16 v0, v26

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_2

    const/4 v9, 0x1

    .line 100
    :goto_1
    and-int/lit8 v5, v26, 0x40

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    .line 101
    :goto_2
    and-int/lit8 v5, v26, 0x20

    if-eqz v5, :cond_4

    const/16 v21, 0x1

    .line 102
    .local v21, "durationFlag":Z
    :goto_3
    if-eqz v10, :cond_0

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 105
    :cond_0
    if-nez v10, :cond_5

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 107
    .local v4, "componentCount":I
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .restart local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_4
    move/from16 v0, v27

    if-ge v0, v4, :cond_5

    .line 109
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v20

    .line 110
    .local v20, "componentTag":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    .line 111
    .local v22, "componentUtcSpliceTime":J
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    const/16 v28, 0x0

    move/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 87
    .end local v4    # "componentCount":I
    .end local v8    # "spliceEventCancelIndicator":Z
    .end local v9    # "outOfNetworkIndicator":Z
    .end local v10    # "programSpliceFlag":Z
    .end local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .end local v12    # "utcSpliceTime":J
    .end local v14    # "autoReturn":Z
    .end local v15    # "duration":J
    .end local v17    # "uniqueProgramId":I
    .end local v18    # "availNum":I
    .end local v19    # "availsExpected":I
    .end local v20    # "componentTag":I
    .end local v21    # "durationFlag":Z
    .end local v22    # "componentUtcSpliceTime":J
    .end local v26    # "headerByte":I
    .end local v27    # "i":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 99
    .restart local v8    # "spliceEventCancelIndicator":Z
    .restart local v9    # "outOfNetworkIndicator":Z
    .restart local v10    # "programSpliceFlag":Z
    .restart local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .restart local v12    # "utcSpliceTime":J
    .restart local v14    # "autoReturn":Z
    .restart local v15    # "duration":J
    .restart local v17    # "uniqueProgramId":I
    .restart local v18    # "availNum":I
    .restart local v19    # "availsExpected":I
    .restart local v26    # "headerByte":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 100
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 101
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 114
    .restart local v21    # "durationFlag":Z
    :cond_5
    if-eqz v21, :cond_6

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    .line 116
    .local v24, "firstByte":J
    const-wide/16 v28, 0x80

    and-long v28, v28, v24

    const-wide/16 v30, 0x0

    cmp-long v5, v28, v30

    if-eqz v5, :cond_8

    const/4 v14, 0x1

    .line 117
    :goto_5
    const-wide/16 v28, 0x1

    and-long v28, v28, v24

    const/16 v5, 0x20

    shl-long v28, v28, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v30

    or-long v15, v28, v30

    .line 119
    .end local v24    # "firstByte":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v17

    .line 120
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v18

    .line 121
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 123
    .end local v21    # "durationFlag":Z
    .end local v26    # "headerByte":I
    :cond_7
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct/range {v5 .. v19}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v5

    .line 116
    .restart local v21    # "durationFlag":Z
    .restart local v24    # "firstByte":J
    .restart local v26    # "headerByte":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_5
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 134
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 136
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-static {v2, p1}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;Landroid/os/Parcel;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "componentSpliceListSize":I
    .end local v1    # "i":I
    :cond_0
    move v2, v4

    .line 130
    goto :goto_0

    :cond_1
    move v2, v4

    .line 131
    goto :goto_1

    :cond_2
    move v2, v4

    .line 132
    goto :goto_2

    .line 138
    .restart local v0    # "componentSpliceListSize":I
    .restart local v1    # "i":I
    :cond_3
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    if-eqz v2, :cond_4

    :goto_4
    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void

    :cond_4
    move v3, v4

    .line 139
    goto :goto_4
.end method
