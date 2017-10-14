.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;
.super Lorg/telegram/messenger/exoplayer2/text/Cue;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue$Builder;
    }
.end annotation


# instance fields
.field public final endTime:J

.field public final startTime:J


# direct methods
.method public constructor <init>(JJLjava/lang/CharSequence;)V
    .locals 15
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x80000000

    const/high16 v10, -0x80000000

    const/4 v11, 0x1

    const/high16 v12, -0x80000000

    const/4 v13, 0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 38
    return-void
.end method

.method public constructor <init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "text"    # Ljava/lang/CharSequence;
    .param p6, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p7, "line"    # F
    .param p8, "lineType"    # I
    .param p9, "lineAnchor"    # I
    .param p10, "position"    # F
    .param p11, "positionAnchor"    # I
    .param p12, "width"    # F

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 44
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;->startTime:J

    .line 45
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;->endTime:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    move-object v1, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isNormalCue()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;->line:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCue;->position:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
