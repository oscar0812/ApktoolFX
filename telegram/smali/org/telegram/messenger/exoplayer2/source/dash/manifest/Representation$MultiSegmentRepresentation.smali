.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;
.super Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field private final segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;)V
    .locals 12
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p7, "inbandEventStreams":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SchemeValuePair;>;"
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$1;)V

    .line 275
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 276
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDurationUs(IJ)J
    .locals 2
    .param p1, "segmentIndex"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 312
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v0

    return v0
.end method

.method public getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
    .locals 0

    .prologue
    .line 285
    return-object p0
.end method

.method public getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSegmentCount(J)I
    .locals 1
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 322
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)I

    move-result v0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1
    .param p1, "segmentIndex"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2
    .param p1, "segmentIndex"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method
