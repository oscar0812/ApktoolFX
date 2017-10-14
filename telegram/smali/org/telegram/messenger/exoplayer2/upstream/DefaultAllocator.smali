.class public final Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private final singleAllocationReleaseHolder:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    .line 48
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 6
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I
    .param p3, "initialAllocationCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-lez p2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 63
    if-ltz p3, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 64
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    .line 65
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 66
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    .line 67
    add-int/lit8 v2, p3, 0x64

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 68
    if-lez p3, :cond_2

    .line 69
    mul-int v2, p3, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 71
    mul-int v0, v1, p2

    .line 72
    .local v0, "allocationOffset":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v4, v5, v0}, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;-><init>([BI)V

    aput-object v4, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "allocationOffset":I
    .end local v1    # "i":I
    :cond_1
    move v2, v4

    .line 62
    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 77
    :cond_3
    new-array v2, v3, [Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 78
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 98
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-lez v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v2

    .line 100
    .local v0, "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    .end local v0    # "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    goto :goto_0

    .line 96
    .end local v0    # "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lorg/telegram/messenger/exoplayer2/upstream/Allocation;)V
    .locals 2
    .param p1, "allocation"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 110
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->release([Lorg/telegram/messenger/exoplayer2/upstream/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release([Lorg/telegram/messenger/exoplayer2/upstream/Allocation;)V
    .locals 7
    .param p1, "allocations"    # [Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .prologue
    const/4 v2, 0x0

    .line 115
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v3, p1

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 116
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v5, p1

    add-int/2addr v4, v5

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 116
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    .line 119
    :cond_0
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p1, v3

    .line 121
    .local v0, "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v1, v5, :cond_1

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    array-length v1, v1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v1, v5, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 123
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object v0, v1, v5

    .line 119
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 121
    goto :goto_1

    .line 125
    .end local v0    # "allocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    array-length v2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .locals 2
    .param p1, "targetBufferSize"    # I

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 88
    .local v0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    .end local v0    # "targetBufferSizeReduced":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized trim()V
    .locals 11

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    .line 133
    .local v6, "targetAllocationCount":I
    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 134
    .local v7, "targetAvailableCount":I
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v7, v8, :cond_1

    .line 170
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v8, :cond_5

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "lowIndex":I
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v8, -0x1

    .local v1, "highIndex":I
    move v2, v1

    .end local v1    # "highIndex":I
    .local v2, "highIndex":I
    move v5, v4

    .line 145
    .end local v4    # "lowIndex":I
    .local v5, "lowIndex":I
    :goto_1
    if-gt v5, v2, :cond_4

    .line 146
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    aget-object v3, v8, v5

    .line 147
    .local v3, "lowAllocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    iget-object v8, v3, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v8, v9, :cond_2

    .line 148
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    move v1, v2

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    :goto_2
    move v2, v1

    .end local v1    # "highIndex":I
    .restart local v2    # "highIndex":I
    move v5, v4

    .line 158
    .end local v4    # "lowIndex":I
    .restart local v5    # "lowIndex":I
    goto :goto_1

    .line 150
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    aget-object v0, v8, v2

    .line 151
    .local v0, "highAllocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/upstream/Allocation;->data:[B

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v8, v9, :cond_3

    .line 152
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    move v4, v5

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    goto :goto_2

    .line 154
    .end local v1    # "highIndex":I
    .end local v4    # "lowIndex":I
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    aput-object v0, v8, v5

    .line 155
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    aput-object v3, v8, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 132
    .end local v0    # "highAllocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    .end local v1    # "highIndex":I
    .end local v3    # "lowAllocation":Lorg/telegram/messenger/exoplayer2/upstream/Allocation;
    .end local v4    # "lowIndex":I
    .end local v6    # "targetAllocationCount":I
    .end local v7    # "targetAvailableCount":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 160
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    .restart local v6    # "targetAllocationCount":I
    .restart local v7    # "targetAvailableCount":I
    :cond_4
    :try_start_2
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 161
    iget v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-ge v7, v8, :cond_0

    .line 168
    .end local v2    # "highIndex":I
    .end local v5    # "lowIndex":I
    :cond_5
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lorg/telegram/messenger/exoplayer2/upstream/Allocation;

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v10, 0x0

    invoke-static {v8, v7, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 169
    iput v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
