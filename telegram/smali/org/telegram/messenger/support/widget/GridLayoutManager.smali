.class public Lorg/telegram/messenger/support/widget/GridLayoutManager;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 83
    return-void
.end method

.method private assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V
    .locals 8
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .prologue
    .line 755
    if-eqz p5, :cond_0

    .line 756
    const/4 v5, 0x0

    .line 757
    .local v5, "start":I
    move v1, p3

    .line 758
    .local v1, "end":I
    const/4 v0, 0x1

    .line 764
    .local v0, "diff":I
    :goto_0
    const/4 v4, 0x0

    .line 765
    .local v4, "span":I
    move v2, v5

    .local v2, "i":I
    :goto_1
    if-eq v2, v1, :cond_1

    .line 766
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v7, v2

    .line 767
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 768
    .local v3, "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 769
    iput v4, v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 770
    iget v7, v3, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v4, v7

    .line 765
    add-int/2addr v2, v0

    goto :goto_1

    .line 760
    .end local v0    # "diff":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v4    # "span":I
    .end local v5    # "start":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, p3, -0x1

    .line 761
    .restart local v5    # "start":I
    const/4 v1, -0x1

    .line 762
    .restart local v1    # "end":I
    const/4 v0, -0x1

    .restart local v0    # "diff":I
    goto :goto_0

    .line 772
    .restart local v2    # "i":I
    .restart local v4    # "span":I
    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 175
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 177
    .local v2, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 178
    .local v3, "viewPosition":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2
    .param p1, "totalSpace"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    .line 295
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 9
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .prologue
    const/4 v8, 0x0

    .line 305
    if-eqz p0, :cond_0

    array-length v6, p0

    add-int/lit8 v7, p1, 0x1

    if-ne v6, v7, :cond_0

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget v6, p0, v6

    if-eq v6, p2, :cond_1

    .line 307
    :cond_0
    add-int/lit8 v6, p1, 0x1

    new-array p0, v6, [I

    .line 309
    :cond_1
    aput v8, p0, v8

    .line 310
    div-int v4, p2, p1

    .line 311
    .local v4, "sizePerSpan":I
    rem-int v5, p2, p1

    .line 312
    .local v5, "sizePerSpanRemainder":I
    const/4 v1, 0x0

    .line 313
    .local v1, "consumedPixels":I
    const/4 v0, 0x0

    .line 314
    .local v0, "additionalSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, p1, :cond_3

    .line 315
    move v3, v4

    .line 316
    .local v3, "itemSize":I
    add-int/2addr v0, v5

    .line 317
    if-lez v0, :cond_2

    sub-int v6, p1, v0

    if-ge v6, v5, :cond_2

    .line 318
    add-int/lit8 v3, v3, 0x1

    .line 319
    sub-int/2addr v0, p1

    .line 321
    :cond_2
    add-int/2addr v1, v3

    .line 322
    aput v1, p0, v2

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "itemSize":I
    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 171
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 7
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    const/4 v2, 0x1

    .line 371
    if-ne p4, v2, :cond_0

    .line 373
    .local v2, "layingOutInPrimaryDirection":Z
    :goto_0
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v5

    .line 374
    .local v5, "span":I
    if-eqz v2, :cond_1

    .line 376
    :goto_1
    if-lez v5, :cond_3

    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v6, :cond_3

    .line 377
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 378
    iget v6, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v5

    goto :goto_1

    .line 371
    .end local v2    # "layingOutInPrimaryDirection":Z
    .end local v5    # "span":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 382
    .restart local v2    # "layingOutInPrimaryDirection":Z
    .restart local v5    # "span":I
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 383
    .local v1, "indexLimit":I
    iget v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 384
    .local v4, "pos":I
    move v0, v5

    .line 385
    .local v0, "bestSpan":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 386
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v3

    .line 387
    .local v3, "next":I
    if-le v3, v0, :cond_2

    .line 388
    add-int/lit8 v4, v4, 0x1

    .line 389
    move v0, v3

    .line 393
    goto :goto_2

    .line 394
    .end local v3    # "next":I
    :cond_2
    iput v4, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 396
    .end local v0    # "bestSpan":I
    .end local v1    # "indexLimit":I
    .end local v4    # "pos":I
    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 349
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 351
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 4
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .prologue
    .line 435
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p3, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    .line 447
    :goto_0
    return v1

    .line 438
    :cond_0
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 439
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 444
    const-string/jumbo v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find span size for pre layout position. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 451
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, p3, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 454
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 455
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 458
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 459
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 464
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v1, 0x0

    goto :goto_0

    .line 468
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 5
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 472
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 475
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 476
    .local v1, "cached":I
    if-ne v1, v3, :cond_0

    .line 479
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 480
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_2

    .line 485
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v1, 0x1

    goto :goto_0

    .line 489
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 2
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .prologue
    .line 730
    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 732
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 733
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 697
    .local v4, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 698
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int v5, v7, v8

    .line 700
    .local v5, "verticalInsets":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int v3, v7, v8

    .line 702
    .local v3, "horizontalInsets":I
    iget v7, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v8, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v7, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v0

    .line 705
    .local v0, "availableSpaceInOther":I
    iget v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v7, v10, :cond_0

    .line 706
    iget v7, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v0, p2, v3, v7, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 708
    .local v6, "wSpec":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v7, v8, v5, v9, v10}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 716
    .local v2, "hSpec":I
    :goto_0
    invoke-direct {p0, p1, v6, v2, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 717
    return-void

    .line 711
    .end local v2    # "hSpec":I
    .end local v6    # "wSpec":I
    :cond_0
    iget v7, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v0, p2, v5, v7, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 713
    .restart local v2    # "hSpec":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v4, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v7, v8, v3, v9, v10}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .restart local v6    # "wSpec":I
    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 739
    .local v0, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_1

    .line 740
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 744
    .local v1, "measure":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 747
    :cond_0
    return-void

    .line 742
    .end local v1    # "measure":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .restart local v1    # "measure":Z
    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 265
    .local v0, "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 266
    return-void

    .line 263
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 236
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p2, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 495
    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 496
    .local v2, "remainingSpan":I
    const/4 v0, 0x0

    .line 497
    .local v0, "count":I
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v4, :cond_0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 498
    iget v1, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 499
    .local v1, "pos":I
    const/4 v4, 0x0

    iget v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 500
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 501
    .local v3, "spanSize":I
    sub-int/2addr v2, v3

    .line 502
    iget v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 503
    add-int/lit8 v0, v0, 0x1

    .line 504
    goto :goto_0

    .line 505
    .end local v1    # "pos":I
    .end local v3    # "spanSize":I
    :cond_0
    return-void
.end method

.method findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 10
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureLayoutState()V

    .line 402
    const/4 v4, 0x0

    .line 403
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 404
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 405
    .local v1, "boundsStart":I
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 406
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 408
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_5

    .line 409
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 410
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 411
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 412
    invoke-direct {p0, p1, p2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v7

    .line 413
    .local v7, "span":I
    if-eqz v7, :cond_2

    .line 408
    .end local v7    # "span":I
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 406
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 416
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "span":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 417
    if-nez v4, :cond_0

    .line 418
    move-object v4, v8

    goto :goto_2

    .line 420
    :cond_3
    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 421
    invoke-virtual {v9, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v1, :cond_6

    .line 422
    :cond_4
    if-nez v5, :cond_0

    .line 423
    move-object v5, v8

    goto :goto_2

    .line 430
    .end local v6    # "position":I
    .end local v7    # "span":I
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    if-eqz v5, :cond_7

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v8, v5

    :cond_6
    return-object v8

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_7
    move-object v5, v4

    goto :goto_3
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 211
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 215
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 222
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 227
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 230
    :goto_0
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x1

    .line 116
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 117
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 124
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 120
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 102
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 103
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 3
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .prologue
    .line 328
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 332
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 37
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getModeInOther()I

    move-result v27

    .line 511
    .local v27, "otherDirSpecMode":I
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v4, :cond_2

    const/16 v18, 0x1

    .line 512
    .local v18, "flexibleInOtherDir":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    aget v16, v4, v5

    .line 516
    .local v16, "currentOtherDirSize":I
    :goto_1
    if-eqz v18, :cond_0

    .line 517
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 519
    :cond_0
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v9, 0x1

    .line 521
    .local v9, "layingOutInPrimaryDirection":Z
    :goto_2
    const/4 v7, 0x0

    .line 522
    .local v7, "count":I
    const/4 v8, 0x0

    .line 523
    .local v8, "consumedSpanCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v31, v0

    .line 524
    .local v31, "remainingSpan":I
    if-nez v9, :cond_1

    .line 525
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v22

    .line 526
    .local v22, "itemSpanIndex":I
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v23

    .line 527
    .local v23, "itemSpanSize":I
    add-int v31, v22, v23

    .line 529
    .end local v22    # "itemSpanIndex":I
    .end local v23    # "itemSpanSize":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v7, v4, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez v31, :cond_6

    .line 530
    move-object/from16 v0, p3

    iget v0, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v30, v0

    .line 531
    .local v30, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v33

    .line 532
    .local v33, "spanSize":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v33

    if-le v0, v4, :cond_5

    .line 533
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " spans but GridLayoutManager has only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " spans."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    .end local v7    # "count":I
    .end local v8    # "consumedSpanCount":I
    .end local v9    # "layingOutInPrimaryDirection":Z
    .end local v16    # "currentOtherDirSize":I
    .end local v18    # "flexibleInOtherDir":Z
    .end local v30    # "pos":I
    .end local v31    # "remainingSpan":I
    .end local v33    # "spanSize":I
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 512
    .restart local v18    # "flexibleInOtherDir":Z
    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 519
    .restart local v16    # "currentOtherDirSize":I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 537
    .restart local v7    # "count":I
    .restart local v8    # "consumedSpanCount":I
    .restart local v9    # "layingOutInPrimaryDirection":Z
    .restart local v30    # "pos":I
    .restart local v31    # "remainingSpan":I
    .restart local v33    # "spanSize":I
    :cond_5
    sub-int v31, v31, v33

    .line 538
    if-gez v31, :cond_7

    .line 550
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_6
    if-nez v7, :cond_8

    .line 551
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 684
    :goto_4
    return-void

    .line 541
    .restart local v30    # "pos":I
    .restart local v33    # "spanSize":I
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v11

    .line 542
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_6

    .line 545
    add-int v8, v8, v33

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v11, v4, v7

    .line 547
    add-int/lit8 v7, v7, 0x1

    .line 548
    goto/16 :goto_3

    .line 555
    .end local v11    # "view":Landroid/view/View;
    .end local v30    # "pos":I
    .end local v33    # "spanSize":I
    :cond_8
    const/16 v25, 0x0

    .line 556
    .local v25, "maxSize":I
    const/16 v26, 0x0

    .local v26, "maxSizeInOther":F
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 559
    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V

    .line 560
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v7, :cond_e

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 562
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_c

    .line 563
    if-eqz v9, :cond_b

    .line 564
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 575
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 577
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v11, v1, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    .line 579
    .local v32, "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 580
    move/from16 v25, v32

    .line 582
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 583
    .local v24, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v5, v5

    div-float v28, v4, v5

    .line 585
    .local v28, "otherSize":F
    cmpl-float v4, v28, v26

    if-lez v4, :cond_a

    .line 586
    move/from16 v26, v28

    .line 560
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 566
    .end local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v28    # "otherSize":F
    .end local v32    # "size":I
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 569
    :cond_c
    if-eqz v9, :cond_d

    .line 570
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    .line 572
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_6

    .line 589
    .end local v11    # "view":Landroid/view/View;
    :cond_e
    if-eqz v18, :cond_10

    .line 591
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 593
    const/16 v25, 0x0

    .line 594
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v7, :cond_10

    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 596
    .restart local v11    # "view":Landroid/view/View;
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    .line 598
    .restart local v32    # "size":I
    move/from16 v0, v32

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 599
    move/from16 v25, v32

    .line 594
    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 606
    .end local v11    # "view":Landroid/view/View;
    .end local v32    # "size":I
    :cond_10
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    if-ge v0, v7, :cond_13

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 608
    .restart local v11    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    move/from16 v0, v25

    if-eq v4, v0, :cond_11

    .line 609
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 610
    .restart local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 611
    .local v17, "decorInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int v35, v4, v5

    .line 613
    .local v35, "verticalInsets":I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int v20, v4, v5

    .line 615
    .local v20, "horizontalInsets":I
    move-object/from16 v0, v24

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v34

    .line 618
    .local v34, "totalSpaceInOther":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 619
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v6, 0x0

    move/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v4, v1, v5, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v36

    .line 621
    .local v36, "wSpec":I
    sub-int v4, v25, v35

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 629
    .local v19, "hSpec":I
    :goto_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v19

    invoke-direct {v0, v11, v1, v2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 606
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_8

    .line 624
    .restart local v17    # "decorInsets":Landroid/graphics/Rect;
    .restart local v20    # "horizontalInsets":I
    .restart local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .restart local v34    # "totalSpaceInOther":I
    .restart local v35    # "verticalInsets":I
    :cond_12
    sub-int v4, v25, v20

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v36

    .line 626
    .restart local v36    # "wSpec":I
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v6, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v4, v1, v5, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v19

    .restart local v19    # "hSpec":I
    goto :goto_9

    .line 633
    .end local v11    # "view":Landroid/view/View;
    .end local v17    # "decorInsets":Landroid/graphics/Rect;
    .end local v19    # "hSpec":I
    .end local v20    # "horizontalInsets":I
    .end local v24    # "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v34    # "totalSpaceInOther":I
    .end local v35    # "verticalInsets":I
    .end local v36    # "wSpec":I
    :cond_13
    move/from16 v0, v25

    move-object/from16 v1, p4

    iput v0, v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 635
    const/4 v12, 0x0

    .local v12, "left":I
    const/4 v14, 0x0

    .local v14, "right":I
    const/4 v13, 0x0

    .local v13, "top":I
    const/4 v15, 0x0

    .line 636
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_17

    .line 637
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 638
    move-object/from16 v0, p3

    iget v15, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 639
    sub-int v13, v15, v25

    .line 653
    :goto_a
    const/16 v21, 0x0

    :goto_b
    move/from16 v0, v21

    if-ge v0, v7, :cond_1b

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v11, v4, v21

    .line 655
    .restart local v11    # "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 656
    .local v29, "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 657
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 658
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    move-object/from16 v0, v29

    iget v10, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v6, v10

    aget v5, v5, v6

    add-int v14, v4, v5

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    sub-int v12, v14, v4

    :goto_c
    move-object/from16 v10, p0

    .line 670
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 678
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 679
    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 681
    :cond_15
    move-object/from16 v0, p4

    iget-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p4

    iput-boolean v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 653
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 641
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    :cond_16
    move-object/from16 v0, p3

    iget v13, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 642
    add-int v15, v13, v25

    goto :goto_a

    .line 645
    :cond_17
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 646
    move-object/from16 v0, p3

    iget v14, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 647
    sub-int v12, v14, v25

    goto :goto_a

    .line 649
    :cond_18
    move-object/from16 v0, p3

    iget v12, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 650
    add-int v14, v12, v25

    goto :goto_a

    .line 661
    .restart local v11    # "view":Landroid/view/View;
    .restart local v29    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, v29

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v6

    add-int v12, v4, v5

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v14, v12, v4

    goto :goto_c

    .line 665
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, v29

    iget v6, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v6

    add-int v13, v4, v5

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v11}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v15, v13, v4

    goto :goto_c

    .line 683
    .end local v11    # "view":Landroid/view/View;
    .end local v29    # "params":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 340
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 341
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 344
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    .line 345
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 34
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 979
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v23

    .line 980
    .local v23, "prevFocusedChild":Landroid/view/View;
    if-nez v23, :cond_1

    .line 981
    const/4 v6, 0x0

    .line 1096
    :cond_0
    :goto_0
    return-object v6

    .line 983
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 984
    .local v18, "lp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v25, v0

    .line 985
    .local v25, "prevSpanStart":I
    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v32, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v33, v0

    add-int v24, v32, v33

    .line 986
    .local v24, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v31

    .line 987
    .local v31, "view":Landroid/view/View;
    if-nez v31, :cond_2

    .line 988
    const/4 v6, 0x0

    goto :goto_0

    .line 992
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v16

    .line 993
    .local v16, "layoutDir":I
    const/16 v32, 0x1

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    const/16 v32, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    const/4 v4, 0x1

    .line 995
    .local v4, "ascend":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 996
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v32

    add-int/lit8 v27, v32, -0x1

    .line 997
    .local v27, "start":I
    const/4 v15, -0x1

    .line 998
    .local v15, "inc":I
    const/16 v17, -0x1

    .line 1004
    .local v17, "limit":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v32

    if-eqz v32, :cond_7

    const/16 v22, 0x1

    .line 1009
    .local v22, "preferLastSpan":Z
    :goto_4
    const/4 v11, 0x0

    .line 1010
    .local v11, "focusableWeakCandidate":Landroid/view/View;
    const/4 v13, -0x1

    .line 1011
    .local v13, "focusableWeakCandidateSpanIndex":I
    const/4 v12, 0x0

    .line 1019
    .local v12, "focusableWeakCandidateOverlap":I
    const/16 v28, 0x0

    .line 1020
    .local v28, "unfocusableWeakCandidate":Landroid/view/View;
    const/16 v30, -0x1

    .line 1021
    .local v30, "unfocusableWeakCandidateSpanIndex":I
    const/16 v29, 0x0

    .line 1028
    .local v29, "unfocusableWeakCandidateOverlap":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v10

    .line 1029
    .local v10, "focusableSpanGroupIndex":I
    move/from16 v14, v27

    .local v14, "i":I
    :goto_5
    move/from16 v0, v17

    if-eq v14, v0, :cond_3

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v14}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v26

    .line 1031
    .local v26, "spanGroupIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1032
    .local v6, "candidate":Landroid/view/View;
    move-object/from16 v0, v23

    if-ne v6, v0, :cond_8

    .line 1096
    .end local v6    # "candidate":Landroid/view/View;
    .end local v26    # "spanGroupIndex":I
    :cond_3
    if-eqz v11, :cond_16

    .end local v11    # "focusableWeakCandidate":Landroid/view/View;
    :goto_6
    move-object v6, v11

    goto/16 :goto_0

    .line 993
    .end local v4    # "ascend":Z
    .end local v10    # "focusableSpanGroupIndex":I
    .end local v12    # "focusableWeakCandidateOverlap":I
    .end local v13    # "focusableWeakCandidateSpanIndex":I
    .end local v14    # "i":I
    .end local v15    # "inc":I
    .end local v17    # "limit":I
    .end local v22    # "preferLastSpan":Z
    .end local v27    # "start":I
    .end local v28    # "unfocusableWeakCandidate":Landroid/view/View;
    .end local v29    # "unfocusableWeakCandidateOverlap":I
    .end local v30    # "unfocusableWeakCandidateSpanIndex":I
    :cond_4
    const/16 v32, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1000
    .restart local v4    # "ascend":Z
    :cond_6
    const/16 v27, 0x0

    .line 1001
    .restart local v27    # "start":I
    const/4 v15, 0x1

    .line 1002
    .restart local v15    # "inc":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v17

    .restart local v17    # "limit":I
    goto :goto_3

    .line 1004
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 1036
    .restart local v6    # "candidate":Landroid/view/View;
    .restart local v10    # "focusableSpanGroupIndex":I
    .restart local v11    # "focusableWeakCandidate":Landroid/view/View;
    .restart local v12    # "focusableWeakCandidateOverlap":I
    .restart local v13    # "focusableWeakCandidateSpanIndex":I
    .restart local v14    # "i":I
    .restart local v22    # "preferLastSpan":Z
    .restart local v26    # "spanGroupIndex":I
    .restart local v28    # "unfocusableWeakCandidate":Landroid/view/View;
    .restart local v29    # "unfocusableWeakCandidateOverlap":I
    .restart local v30    # "unfocusableWeakCandidateSpanIndex":I
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_a

    move/from16 v0, v26

    if-eq v0, v10, :cond_a

    .line 1041
    if-nez v11, :cond_3

    .line 1029
    :cond_9
    :goto_7
    add-int/2addr v14, v15

    goto :goto_5

    .line 1047
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 1048
    .local v8, "candidateLp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    iget v9, v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1049
    .local v9, "candidateStart":I
    iget v0, v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v32, v0

    iget v0, v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move/from16 v33, v0

    add-int v7, v32, v33

    .line 1050
    .local v7, "candidateEnd":I
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_b

    move/from16 v0, v25

    if-ne v9, v0, :cond_b

    move/from16 v0, v24

    if-eq v7, v0, :cond_0

    .line 1054
    :cond_b
    const/4 v5, 0x0

    .line 1055
    .local v5, "assignAsWeek":Z
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_c

    if-eqz v11, :cond_d

    .line 1056
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-nez v32, :cond_f

    if-nez v28, :cond_f

    .line 1057
    :cond_d
    const/4 v5, 0x1

    .line 1082
    :cond_e
    :goto_8
    if-eqz v5, :cond_9

    .line 1083
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_15

    .line 1084
    move-object v11, v6

    .line 1085
    iget v13, v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1086
    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 1087
    move/from16 v0, v25

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v33

    sub-int v12, v32, v33

    goto :goto_7

    .line 1059
    :cond_f
    move/from16 v0, v25

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1060
    .local v19, "maxStart":I
    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1061
    .local v20, "minEnd":I
    sub-int v21, v20, v19

    .line 1062
    .local v21, "overlap":I
    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1063
    move/from16 v0, v21

    if-le v0, v12, :cond_10

    .line 1064
    const/4 v5, 0x1

    goto :goto_8

    .line 1065
    :cond_10
    move/from16 v0, v21

    if-ne v0, v12, :cond_e

    if-le v9, v13, :cond_11

    const/16 v32, 0x1

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 1068
    const/4 v5, 0x1

    goto :goto_8

    .line 1065
    :cond_11
    const/16 v32, 0x0

    goto :goto_9

    .line 1070
    :cond_12
    if-nez v11, :cond_e

    const/16 v32, 0x0

    const/16 v33, 0x1

    .line 1071
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v6, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 1072
    move/from16 v0, v21

    move/from16 v1, v29

    if-le v0, v1, :cond_13

    .line 1073
    const/4 v5, 0x1

    goto :goto_8

    .line 1074
    :cond_13
    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    move/from16 v0, v30

    if-le v9, v0, :cond_14

    const/16 v32, 0x1

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 1077
    const/4 v5, 0x1

    goto :goto_8

    .line 1074
    :cond_14
    const/16 v32, 0x0

    goto :goto_a

    .line 1089
    .end local v19    # "maxStart":I
    .end local v20    # "minEnd":I
    .end local v21    # "overlap":I
    :cond_15
    move-object/from16 v28, v6

    .line 1090
    iget v0, v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v30, v0

    .line 1091
    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 1092
    move/from16 v0, v25

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v33

    sub-int v29, v32, v33

    goto/16 :goto_7

    .end local v5    # "assignAsWeek":Z
    .end local v6    # "candidate":Landroid/view/View;
    .end local v7    # "candidateEnd":I
    .end local v8    # "candidateLp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    .end local v9    # "candidateStart":I
    .end local v26    # "spanGroupIndex":I
    :cond_16
    move-object/from16 v11, v28

    .line 1096
    goto/16 :goto_6
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 130
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 131
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 148
    :goto_0
    return-void

    :cond_0
    move-object v8, v9

    .line 135
    check-cast v8, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    .line 136
    .local v8, "glp":Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v2

    .line 137
    .local v2, "spanGroupIndex":I
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 141
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 138
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 143
    :cond_2
    const/4 v3, 0x1

    .line 145
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 146
    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 143
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 186
    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 191
    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 207
    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 196
    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 202
    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 152
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 155
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 159
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 160
    return-void
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 166
    return-void
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 356
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 357
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    .line 358
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 364
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    .line 365
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    .line 366
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 270
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v6, :cond_0

    .line 271
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 275
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 276
    .local v4, "verticalPadding":I
    iget v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 278
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v6

    invoke-static {p3, v2, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 279
    .local v0, "height":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v1

    .line 280
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v7

    .line 279
    invoke-static {p2, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 287
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0, v5, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 288
    return-void

    .line 282
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 283
    .local v3, "usedWidth":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v6

    invoke-static {p2, v3, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 284
    .restart local v5    # "width":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    .line 285
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v7

    .line 284
    invoke-static {p3, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 3
    .param p1, "spanCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 794
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 798
    if-ge p1, v1, :cond_1

    .line 799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    .line 803
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 804
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "spanSizeLookup"    # Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    .line 247
    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 97
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
