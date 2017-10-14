.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
.super Ljava/lang/Object;
.source "DashManifest.java"


# instance fields
.field public final availabilityStartTime:J

.field public final duration:J

.field public final dynamic:Z

.field public final location:Landroid/net/Uri;

.field public final minBufferTime:J

.field public final minUpdatePeriod:J

.field private final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final suggestedPresentationDelay:J

.field public final timeShiftBufferDepth:J

.field public final utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;


# direct methods
.method public constructor <init>(JJJZJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V
    .locals 1
    .param p1, "availabilityStartTime"    # J
    .param p3, "duration"    # J
    .param p5, "minBufferTime"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdatePeriod"    # J
    .param p10, "timeShiftBufferDepth"    # J
    .param p12, "suggestedPresentationDelay"    # J
    .param p14, "utcTiming"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;
    .param p15, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p16, "periods":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    .line 55
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    .line 56
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minBufferTime:J

    .line 57
    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    .line 58
    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    .line 59
    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    .line 60
    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    .line 61
    iput-object p14, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    .line 62
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    .line 63
    if-nez p16, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p16

    .end local p16    # "periods":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;>;"
    :cond_0
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 64
    return-void
.end method

.method private static copyAdaptationSets(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .local p1, "keys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;

    .line 122
    .local v4, "key":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    .line 123
    .local v5, "periodIndex":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "copyAdaptationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    :cond_0
    iget v1, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    .line 126
    .local v1, "adaptationSetIndex":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 128
    .local v0, "adaptationSet":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 129
    .local v7, "representations":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v3, "copyRepresentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_1
    iget v8, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->representationIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .line 132
    .local v6, "representation":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;
    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;

    .line 134
    .restart local v4    # "key":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;
    iget v8, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    if-ne v8, v5, :cond_2

    iget v8, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->adaptationSetIndex:I

    if-eq v8, v1, :cond_1

    .line 136
    :cond_2
    new-instance v8, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    invoke-direct {v8, v9, v10, v3, v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget v8, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    if-eq v8, v5, :cond_0

    .line 140
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 141
    return-object v2
.end method


# virtual methods
.method public final copy(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "representationKeys":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;>;"
    new-instance v20, Ljava/util/LinkedList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v20, "keys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;>;"
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, -0x1

    invoke-direct {v2, v3, v4, v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;-><init>(III)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v18, "copyPeriods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;>;"
    const-wide/16 v26, 0x0

    .line 99
    .local v26, "shiftMs":J
    const/16 v24, 0x0

    .local v24, "periodIndex":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_2

    .line 100
    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RepresentationKey;->periodIndex:I

    move/from16 v0, v24

    if-eq v2, v0, :cond_1

    .line 102
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v22

    .line 103
    .local v22, "periodDurationMs":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v22, v2

    if-eqz v2, :cond_0

    .line 104
    add-long v26, v26, v22

    .line 99
    .end local v22    # "periodDurationMs":J
    :cond_0
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 107
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v21

    .line 108
    .local v21, "period":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 109
    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->copyAdaptationSets(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    move-result-object v19

    .line 110
    .local v19, "copyAdaptationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v8, v8, v26

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v8, v9, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v19    # "copyAdaptationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    .end local v21    # "period":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    sub-long v5, v2, v26

    .line 114
    .local v5, "newDuration":J
    :goto_2
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minBufferTime:J

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriod:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelay:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v18}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v2

    .line 113
    .end local v5    # "newDuration":J
    :cond_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2
.end method

.method public final getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    return-object v0
.end method

.method public final getPeriodCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPeriodDurationMs(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 75
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->duration:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v0, v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->periods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public final getPeriodDurationUs(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationMs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method
