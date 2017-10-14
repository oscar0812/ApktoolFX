.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J


# direct methods
.method private constructor <init>([J[II[J[I)V
    .locals 0
    .param p1, "offsets"    # [J
    .param p2, "sizes"    # [I
    .param p3, "maximumSize"    # I
    .param p4, "timestamps"    # [J
    .param p5, "flags"    # [I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 39
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 40
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 41
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 42
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 43
    return-void
.end method

.method synthetic constructor <init>([J[II[J[ILorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V
    .locals 0
    .param p1, "x0"    # [J
    .param p2, "x1"    # [I
    .param p3, "x2"    # I
    .param p4, "x3"    # [J
    .param p5, "x4"    # [I
    .param p6, "x5"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[I)V

    return-void
.end method
