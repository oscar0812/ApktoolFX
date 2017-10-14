.class public interface abstract Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
.super Ljava/lang/Object;
.source "DashSegmentIndex.java"


# static fields
.field public static final INDEX_UNBOUNDED:I = -0x1


# virtual methods
.method public abstract getDurationUs(IJ)J
.end method

.method public abstract getFirstSegmentNum()I
.end method

.method public abstract getSegmentCount(J)I
.end method

.method public abstract getSegmentNum(JJ)I
.end method

.method public abstract getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public abstract getTimeUs(I)J
.end method

.method public abstract isExplicit()Z
.end method
