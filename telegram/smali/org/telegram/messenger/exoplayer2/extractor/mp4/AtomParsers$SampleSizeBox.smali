.class interface abstract Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SampleSizeBox"
.end annotation


# virtual methods
.method public abstract getSampleCount()I
.end method

.method public abstract isFixedSampleSize()Z
.end method

.method public abstract readNextSampleSize()I
.end method
