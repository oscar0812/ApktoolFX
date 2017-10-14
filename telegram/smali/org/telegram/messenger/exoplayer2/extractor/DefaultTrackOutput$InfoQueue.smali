.class final Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoQueue"
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private largestDequeuedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x1

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    .line 626
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 627
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 628
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 629
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 630
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 631
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 632
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 633
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 634
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 635
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 636
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z

    .line 637
    return-void
.end method


# virtual methods
.method public declared-synchronized attemptSplice(J)Z
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    .line 972
    const/4 v1, 0x0

    .line 980
    :goto_0
    monitor-exit p0

    return v1

    .line 974
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 975
    .local v0, "retainCount":I
    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_1

    .line 977
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 979
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    const/4 v1, 0x1

    goto :goto_0

    .line 971
    .end local v0    # "retainCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearSampleData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 641
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 642
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 643
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z

    .line 645
    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .locals 13
    .param p1, "timeUs"    # J
    .param p3, "sampleFlags"    # I
    .param p4, "offset"    # J
    .param p6, "size"    # I
    .param p7, "encryptionKey"    # [B

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 897
    and-int/lit8 v10, p3, 0x1

    if-nez v10, :cond_1

    .line 957
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 900
    :cond_1
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z

    .line 902
    :cond_2
    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 903
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    .line 904
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v10, v11

    .line 905
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, v10, v11

    .line 906
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p6, v10, v11

    .line 907
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p3, v10, v11

    .line 908
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-object p7, v10, v11

    .line 909
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v12, v10, v11

    .line 910
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    aput v12, v10, v11

    .line 912
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 913
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v10, v11, :cond_4

    .line 915
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/lit16 v2, v10, 0x3e8

    .line 916
    .local v2, "newCapacity":I
    new-array v8, v2, [I

    .line 917
    .local v8, "newSourceIds":[I
    new-array v6, v2, [J

    .line 918
    .local v6, "newOffsets":[J
    new-array v9, v2, [J

    .line 919
    .local v9, "newTimesUs":[J
    new-array v4, v2, [I

    .line 920
    .local v4, "newFlags":[I
    new-array v7, v2, [I

    .line 921
    .local v7, "newSizes":[I
    new-array v3, v2, [[B

    .line 922
    .local v3, "newEncryptionKeys":[[B
    new-array v5, v2, [Lorg/telegram/messenger/exoplayer2/Format;

    .line 923
    .local v5, "newFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    sub-int v1, v10, v11

    .line 924
    .local v1, "beforeWrap":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v6, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v8, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 931
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 932
    .local v0, "afterWrap":I
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 933
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 936
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 939
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 940
    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 941
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 942
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 943
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 944
    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 945
    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 946
    const/4 v10, 0x0

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 947
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 948
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 949
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 896
    .end local v0    # "afterWrap":I
    .end local v1    # "beforeWrap":I
    .end local v2    # "newCapacity":I
    .end local v3    # "newEncryptionKeys":[[B
    .end local v4    # "newFlags":[I
    .end local v5    # "newFormats":[Lorg/telegram/messenger/exoplayer2/Format;
    .end local v6    # "newOffsets":[J
    .end local v7    # "newSizes":[I
    .end local v8    # "newSourceIds":[I
    .end local v9    # "newTimesUs":[J
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 902
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 951
    :cond_4
    :try_start_2
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 952
    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v10, v11, :cond_0

    .line 954
    const/4 v10, 0x0

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .locals 8
    .param p1, "discardFromIndex"    # I

    .prologue
    .line 668
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v4

    sub-int v0, v4, p1

    .line 669
    .local v0, "discardCount":I
    if-ltz v0, :cond_0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-gt v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 671
    if-nez v0, :cond_3

    .line 672
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    if-nez v4, :cond_1

    .line 674
    const-wide/16 v4, 0x0

    .line 692
    :goto_1
    return-wide v4

    .line 669
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 676
    :cond_1
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v4, :cond_2

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    :goto_2
    add-int/lit8 v2, v4, -0x1

    .line 677
    .local v2, "lastWriteIndex":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v4, v4, v2

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_1

    .line 676
    .end local v2    # "lastWriteIndex":I
    :cond_2
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    goto :goto_2

    .line 680
    :cond_3
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 681
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 684
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 685
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 686
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v3, v4, v5

    .line 687
    .local v3, "sampleIndex":I
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 688
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 692
    .end local v3    # "sampleIndex":I
    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aget-wide v4, v4, v5

    goto :goto_1

    .line 685
    .restart local v3    # "sampleIndex":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public declared-synchronized format(Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 3
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 880
    monitor-enter p0

    if-nez p1, :cond_1

    .line 881
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 884
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 885
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 889
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 890
    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .locals 4

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .locals 2

    .prologue
    .line 713
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public declared-synchronized readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I
    .locals 6
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "formatRequired"    # Z
    .param p4, "loadingFinished"    # Z
    .param p5, "downstreamFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p6, "extrasHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    .prologue
    const/4 v2, -0x3

    const/4 v0, -0x4

    const/4 v1, -0x5

    .line 769
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v3, :cond_3

    .line 770
    if-eqz p4, :cond_0

    .line 771
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :goto_0
    monitor-exit p0

    return v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eq v0, p5, :cond_2

    .line 775
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move v0, v1

    .line 776
    goto :goto_0

    :cond_2
    move v0, v2

    .line 778
    goto :goto_0

    .line 782
    :cond_3
    if-nez p3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v3, v3, v4

    if-eq v3, p5, :cond_5

    .line 783
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move v0, v1

    .line 784
    goto :goto_0

    .line 787
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    .line 788
    goto :goto_0

    .line 791
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2

    iput-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 792
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 793
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v1, v1, v2

    iput v1, p6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    .line 794
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2

    iput-wide v2, p6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 795
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v1, v1, v2

    iput-object v1, p6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    .line 797
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v4, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 798
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 799
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 800
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 801
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v1, v2, :cond_7

    .line 803
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 806
    :cond_7
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2

    :goto_1
    iput-wide v2, p6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 806
    :cond_8
    :try_start_2
    iget-wide v2, p6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget v1, p6, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public resetLargestParsedTimestamps()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 650
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 651
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 652
    return-void
.end method

.method public declared-synchronized skipAll()J
    .locals 6

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 819
    const-wide/16 v2, -0x1

    .line 826
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 822
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v0, v1, v2

    .line 823
    .local v0, "lastSampleIndex":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 824
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 825
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 826
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 818
    .end local v0    # "lastSampleIndex":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized skipToKeyframeBefore(JZ)J
    .locals 9
    .param p1, "timeUs"    # J
    .param p3, "allowTimeBeyondBuffer"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 841
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v6, v3, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, p1, v6

    if-gez v3, :cond_1

    .line 874
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 845
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v6

    if-lez v3, :cond_2

    if-eqz p3, :cond_0

    .line 852
    :cond_2
    const/4 v0, 0x0

    .line 853
    .local v0, "sampleCount":I
    const/4 v1, -0x1

    .line 854
    .local v1, "sampleCountToKeyframe":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 855
    .local v2, "searchIndex":I
    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-eq v2, v3, :cond_3

    .line 856
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v3, v2

    cmp-long v3, v6, p1

    if-lez v3, :cond_4

    .line 867
    :cond_3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 871
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 872
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 873
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 874
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v4, v3, v4

    goto :goto_0

    .line 859
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v3, v3, v2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 861
    move v1, v0

    .line 863
    :cond_5
    add-int/lit8 v3, v2, 0x1

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int v2, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 841
    .end local v0    # "sampleCount":I
    .end local v1    # "sampleCountToKeyframe":I
    .end local v2    # "searchIndex":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public sourceId(I)V
    .locals 0
    .param p1, "sourceId"    # I

    .prologue
    .line 696
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    .line 697
    return-void
.end method
