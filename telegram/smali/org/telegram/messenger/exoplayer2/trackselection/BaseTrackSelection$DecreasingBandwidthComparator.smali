.class final Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecreasingBandwidthComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/exoplayer2/Format;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$1;

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    check-cast p1, Lorg/telegram/messenger/exoplayer2/Format;

    check-cast p2, Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;->compare(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2
    .param p1, "a"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p2, "b"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 189
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    sub-int/2addr v0, v1

    return v0
.end method
