.class public final Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/LoadControl;


# static fields
.field private static final ABOVE_HIGH_WATERMARK:I = 0x0

.field private static final BELOW_LOW_WATERMARK:I = 0x2

.field private static final BETWEEN_WATERMARKS:I = 0x1

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0x7530

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;)V
    .locals 8
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    .prologue
    .line 82
    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;IIJJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;IIJJ)V
    .locals 10
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "maxBufferMs"    # I
    .param p4, "bufferForPlaybackMs"    # J
    .param p6, "bufferForPlaybackAfterRebufferMs"    # J

    .prologue
    .line 102
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;IIJJLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;IIJJLorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;)V
    .locals 4
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "maxBufferMs"    # I
    .param p4, "bufferForPlaybackMs"    # J
    .param p6, "bufferForPlaybackAfterRebufferMs"    # J
    .param p8, "priorityTaskManager"    # Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    .line 127
    int-to-long v0, p2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 128
    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    .line 129
    mul-long v0, p4, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 130
    mul-long v0, p6, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 131
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    .line 132
    return-void
.end method

.method private getBufferTimeState(J)I
    .locals 3
    .param p1, "bufferedDurationUs"    # J

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->minBufferUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "resetAllocator"    # Z

    .prologue
    const/4 v1, 0x0

    .line 195
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 196
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 199
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->reset()V

    .line 203
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllocator()Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public onPrepared()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 137
    return-void
.end method

.method public onReleased()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 159
    return-void
.end method

.method public onStopped()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 154
    return-void
.end method

.method public onTracksSelected([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p3, "trackSelections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 144
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 149
    return-void
.end method

.method public shouldContinueLoading(J)Z
    .locals 7
    .param p1, "bufferedDurationUs"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->getBufferTimeState(J)I

    move-result v0

    .line 175
    .local v0, "bufferTimeState":I
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    if-lt v5, v6, :cond_2

    move v1, v3

    .line 176
    .local v1, "targetBufferSizeReached":Z
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 177
    .local v2, "wasBuffering":Z
    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    if-ne v0, v3, :cond_3

    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    :cond_0
    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 179
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eq v3, v2, :cond_1

    .line 180
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 186
    :cond_1
    :goto_2
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    return v3

    .end local v1    # "targetBufferSizeReached":Z
    .end local v2    # "wasBuffering":Z
    :cond_2
    move v1, v4

    .line 175
    goto :goto_0

    .restart local v1    # "targetBufferSizeReached":Z
    .restart local v2    # "wasBuffering":Z
    :cond_3
    move v3, v4

    .line 177
    goto :goto_1

    .line 183
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->priorityTaskManager:Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/PriorityTaskManager;->remove(I)V

    goto :goto_2
.end method

.method public shouldStartPlayback(JZ)Z
    .locals 5
    .param p1, "bufferedDurationUs"    # J
    .param p3, "rebuffering"    # Z

    .prologue
    .line 168
    if-eqz p3, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 169
    .local v0, "minBufferDurationUs":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 168
    .end local v0    # "minBufferDurationUs":J
    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    goto :goto_0

    .line 169
    .restart local v0    # "minBufferDurationUs":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
