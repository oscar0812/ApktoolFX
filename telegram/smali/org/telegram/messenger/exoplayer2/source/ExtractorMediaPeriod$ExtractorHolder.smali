.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

.field private final extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "extractors"    # [Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .param p2, "extractorOutput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 689
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 690
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->release()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 733
    :cond_0
    return-void
.end method

.method public selectExtractor(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .locals 5
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 725
    :goto_0
    return-object v1

    .line 708
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 710
    .local v0, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 720
    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-nez v1, :cond_3

    .line 721
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "None of the available extractors ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .line 722
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") could read the stream."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/telegram/messenger/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v1

    .line 717
    .restart local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_2
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 708
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 714
    :catch_0
    move-exception v4

    .line 717
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    throw v1

    .line 724
    .end local v0    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    .line 725
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    goto :goto_0
.end method
