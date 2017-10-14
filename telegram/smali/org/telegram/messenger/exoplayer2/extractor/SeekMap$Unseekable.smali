.class public final Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field private final durationUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "durationUs"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    .line 38
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 2
    .param p1, "timeUs"    # J

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
