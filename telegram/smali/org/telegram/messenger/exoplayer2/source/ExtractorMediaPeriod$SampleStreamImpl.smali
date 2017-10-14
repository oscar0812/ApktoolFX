.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;I)V
    .locals 0
    .param p2, "track"    # I

    .prologue
    .line 556
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    .line 558
    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    .prologue
    .line 552
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    return v0
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    .line 568
    return-void
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->readData(ILorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    return v0
.end method

.method public skipData(J)V
    .locals 3
    .param p1, "positionUs"    # J

    .prologue
    .line 578
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->skipData(IJ)V

    .line 579
    return-void
.end method
