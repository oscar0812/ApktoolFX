.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# instance fields
.field protected final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field public final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field public final endTimeUs:J

.field public final startTimeUs:J

.field public final trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 1
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I
    .param p4, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "startTimeUs"    # J
    .param p9, "endTimeUs"    # J

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 81
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 82
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    .line 83
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 84
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    .line 85
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    .line 86
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 87
    iput-wide p9, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 88
    return-void
.end method


# virtual methods
.method public abstract bytesLoaded()J
.end method

.method public final getDurationUs()J
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
