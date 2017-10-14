.class final Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;
.super Ljava/lang/Object;
.source "SubripSubtitle.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:[Lorg/telegram/messenger/exoplayer2/text/Cue;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/text/Cue;[J)V
    .locals 0
    .param p1, "cues"    # [Lorg/telegram/messenger/exoplayer2/text/Cue;
    .param p2, "cueTimesUs"    # [J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cues:[Lorg/telegram/messenger/exoplayer2/text/Cue;

    .line 40
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    .line 41
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 5
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 64
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cues:[Lorg/telegram/messenger/exoplayer2/text/Cue;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 66
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cues:[Lorg/telegram/messenger/exoplayer2/text/Cue;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getEventTime(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 46
    .local v0, "index":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/subrip/SubripSubtitle;->cueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
