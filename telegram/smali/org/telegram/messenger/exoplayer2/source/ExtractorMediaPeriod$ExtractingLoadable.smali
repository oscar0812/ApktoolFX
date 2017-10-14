.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# static fields
.field private static final CONTINUE_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

.field private seekTimeUs:J

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;)V
    .locals 2
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p4, "extractorHolder"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
    .param p5, "loadCondition"    # Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    .prologue
    .line 607
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 609
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 610
    invoke-static {p4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 611
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    .line 612
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 614
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 615
    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    .prologue
    .line 586
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    .line 626
    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 635
    const/4 v9, 0x0

    .line 636
    .local v9, "result":I
    :goto_0
    if-nez v9, :cond_7

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_7

    .line 637
    const/4 v8, 0x0

    .line 639
    .local v8, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 640
    .local v2, "position":J
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$700(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 641
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v10, -0x1

    cmp-long v1, v4, v10

    if-eqz v1, :cond_0

    .line 642
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    .line 644
    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 645
    .end local v8    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->selectExtractor(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    move-result-object v7

    .line 646
    .local v7, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v1, :cond_1

    .line 647
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v7, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->seek(JJ)V

    .line 648
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 650
    :cond_1
    :goto_1
    if-nez v9, :cond_3

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_3

    .line 651
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->block()V

    .line 652
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v7, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v9

    .line 653
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const-wide/32 v10, 0x100000

    add-long/2addr v10, v2

    cmp-long v1, v4, v10

    if-lez v1, :cond_1

    .line 654
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 655
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->close()Z

    .line 656
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$900(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$800(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 660
    .end local v7    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :catchall_0
    move-exception v1

    .end local v2    # "position":J
    :goto_2
    const/4 v4, 0x1

    if-ne v9, v4, :cond_6

    .line 661
    const/4 v9, 0x0

    .line 665
    :cond_2
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1

    .line 660
    .restart local v2    # "position":J
    .restart local v7    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_3
    const/4 v1, 0x1

    if-ne v9, v1, :cond_5

    .line 661
    const/4 v9, 0x0

    .line 665
    :cond_4
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_0

    .line 662
    :cond_5
    if-eqz v0, :cond_4

    .line 663
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v1, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_4

    .line 662
    .end local v2    # "position":J
    .end local v7    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_6
    if-eqz v0, :cond_2

    .line 663
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v4, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    goto :goto_3

    .line 668
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :cond_7
    return-void

    .line 660
    .restart local v8    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .restart local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    goto :goto_2
.end method

.method public setLoadPosition(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .prologue
    .line 618
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->positionHolder:Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;

    iput-wide p1, v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 619
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 621
    return-void
.end method
