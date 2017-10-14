.class public Lcom/googlecode/mp4parser/authoring/Edit;
.super Ljava/lang/Object;
.source "Edit.java"


# instance fields
.field private mediaRate:D

.field private mediaTime:J

.field private segmentDuration:D

.field private timeScale:J


# direct methods
.method public constructor <init>(JJDD)V
    .locals 1
    .param p1, "mediaTime"    # J
    .param p3, "timeScale"    # J
    .param p5, "mediaRate"    # D
    .param p7, "segmentDurationInMs"    # D

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/Edit;->timeScale:J

    .line 20
    iput-wide p7, p0, Lcom/googlecode/mp4parser/authoring/Edit;->segmentDuration:D

    .line 21
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/Edit;->mediaTime:J

    .line 22
    iput-wide p5, p0, Lcom/googlecode/mp4parser/authoring/Edit;->mediaRate:D

    .line 23
    return-void
.end method


# virtual methods
.method public getMediaRate()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/Edit;->mediaRate:D

    return-wide v0
.end method

.method public getMediaTime()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/Edit;->mediaTime:J

    return-wide v0
.end method

.method public getSegmentDuration()D
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/Edit;->segmentDuration:D

    return-wide v0
.end method

.method public getTimeScale()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/Edit;->timeScale:J

    return-wide v0
.end method
